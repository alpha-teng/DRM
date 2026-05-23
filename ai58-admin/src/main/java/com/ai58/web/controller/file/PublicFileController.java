package com.ai58.web.controller.file;

import java.io.*;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.*;

/**
 * 公开文件访问控制器 - 绕过所有认证
 */
@RestController
@RequestMapping("/public/file")
public class PublicFileController {

    /**
     * 递归在子目录中查找文件
     */
    private java.io.File findFileInSubDirectories(java.io.File directory, String fileName) {
        if (directory == null || !directory.exists() || !directory.isDirectory()) {
            return null;
        }

        java.io.File[] files = directory.listFiles();
        if (files == null) {
            return null;
        }

        for (java.io.File file : files) {
            if (file.isDirectory()) {
                // 递归搜索子目录
                java.io.File found = findFileInSubDirectories(file, fileName);
                if (found != null) {
                    System.out.println("在递归搜索中找到文件: " + found.getAbsolutePath());
                    return found;
                }
            } else if (file.isFile() && file.getName().equals(fileName)) {
                System.out.println("找到匹配文件: " + file.getAbsolutePath());
                return file;
            }
        }
        return null;
    }

    /**
     * 公开文件下载接口
     */
    @GetMapping("/service/{ticketId}/{fileName:.+}")
    public void downloadServiceFile(@PathVariable Long ticketId, @PathVariable String fileName, HttpServletResponse response) {
        try {
            // URL解码文件名
            String decodedFileName = java.net.URLDecoder.decode(fileName, "UTF-8");
            System.out.println("公开接口请求下载: ticketId=" + ticketId + ", fileName=" + decodedFileName);

            java.io.File file = null;

            // 1. 先直接在profile/upload目录查找（文件实际存储位置）
            String basePath = com.ai58.common.config.ContractConfig.getUploadPath(); // D:/park-zs/uploads
            String profileUploadPath = basePath + "/profile/upload"; // D:/park-zs/uploads/profile/upload
            file = new java.io.File(profileUploadPath, decodedFileName);
            System.out.println("尝试路径1: " + file.getAbsolutePath() + ", 存在: " + file.exists());

            if (!file.exists() || !file.isFile()) {
                // 2. 在profile/upload子目录中查找（递归搜索）
                java.io.File foundFile = findFileInSubDirectories(new java.io.File(profileUploadPath), decodedFileName);
                if (foundFile != null && foundFile.exists() && foundFile.isFile()) {
                    file = foundFile;
                }
            }

            if (file == null || !file.exists() || !file.isFile()) {
                System.out.println("文件不存在: " + decodedFileName);
                response.sendError(404, "文件不存在: " + decodedFileName);
                return;
            }

            System.out.println("成功找到文件: " + file.getAbsolutePath() + ", 大小: " + file.length() + " bytes");

            // 设置响应头
            String encodedFileName = java.net.URLEncoder.encode(decodedFileName, "UTF-8").replaceAll("\\+", "%20");
            response.setContentType("application/octet-stream");
            response.setHeader("Content-Disposition", "attachment; filename=\"" + encodedFileName + "\"; filename*=UTF-8''" + encodedFileName);
            response.setContentLength((int) file.length());

            // 读取文件并写入响应
            try (FileInputStream fis = new FileInputStream(file);
                 BufferedInputStream bis = new BufferedInputStream(fis);
                 OutputStream os = response.getOutputStream()) {

                byte[] buffer = new byte[8192];
                int bytesRead;
                while ((bytesRead = bis.read(buffer)) != -1) {
                    os.write(buffer, 0, bytesRead);
                }
                os.flush();
            }

            System.out.println("文件下载完成: " + decodedFileName);

        } catch (Exception e) {
            System.err.println("下载文件失败: " + e.getMessage());
            e.printStackTrace();
            try {
                response.sendError(500, "下载失败: " + e.getMessage());
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }
}