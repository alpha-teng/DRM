# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Hospital Operations Decision Analysis System (DRM - 医院运营决策分析系统) built on the RuoYi-Vue framework. It provides comprehensive decision support for hospital management through data analysis, cost accounting, performance management, DRG analysis, and AI-powered insights.

**Technology Stack:**
- **Backend:** Java 17, Spring Boot 2.5.15, MyBatis, MySQL
- **Frontend:** Vue 2.6.12, Element UI 2.15.14, ECharts 5.4.0
- **Architecture:** Multi-module Maven project with modular design

## Module Structure

The project is organized into the following Maven modules:

- **ai58-admin:** Main application entry point and web controllers
- **ai58-framework:** Core framework configuration (security, interceptor, etc.)
- **ai58-system:** System management (users, roles, menus, departments, etc.)
- **ai58-common:** Common utilities, annotations, and domain objects
- **ai58-drm:** DRM business logic module (hospital operations, cost, DRG, etc.)
- **ai58-quartz:** Scheduled task management
- **ai58-generator:** Code generation tools
- **ai58-park:** Park/investment management module
- **ai58-ui:** Vue.js frontend application

## Common Development Commands

### Backend (Maven)

```bash
# Build all modules
mvn clean package

# Run the application (from ai58-admin directory)
cd ai58-admin
mvn spring-boot:run

# Skip tests during build
mvn clean package -DskipTests

# Generate code (using built-in generator)
# Access at: http://localhost:8093/tool/gen
```

The backend runs on port **8093** by default.

### Frontend (Vue.js)

```bash
cd ai58-ui

# Install dependencies
npm install

# Development server (runs on http://localhost:80)
npm run dev

# Build for production
npm run build:prod

# Build for staging
npm run build:stage

# Lint code
npm run lint
```

### Database

- Default database: MySQL
- Connection configured in `ai58-admin/src/main/resources/application-dev.yml`
- MyBatis mappers located in `src/main/resources/mapper/`

## Architecture Patterns

### Backend Layer Structure

Controllers follow a standard REST pattern:
- **Controller Layer:** `ai58-drm/src/main/java/com/ai58/drm/controller/`
- **Service Layer:** `ai58-drm/src/main/java/com/ai58/drm/service/`
- **Mapper Layer:** `ai58-drm/src/main/java/com/ai58/drm/mapper/`
- **Domain Layer:** `ai58-drm/src/main/java/com/ai58/drm/domain/`

All DRM controllers extend `BaseController` and use standard annotations:
- `@PreAuthorize("@ss.hasPermi('module:action')")` for permission checks
- `@Log(title="...", businessType=BusinessType.TYPE)` for operation logging

### Frontend Structure

- **API Layer:** `src/api/drm/` - API service modules
- **Views:** `src/views/drm/` - Page components organized by module
- **Components:** `src/components/` - Reusable components
- **Router:** `src/router/index.js` - Route configuration
- **Store:** `src/store/` - Vuex state management

### DRM Business Modules

The DRM module includes these key functional areas:

1. **院长驾驶舱:** `BigScreenController`, `cockpit/` views
2. **运营分析:** `OutpatientStatsController`, `InpatientStatsController`, `SurgeryStatsController`
3. **财务管控:** `IncomeController`, `ExpenseController`, `ReceivableController`
4. **成本核算:** `CostDataController`, `CostAllocationController`
5. **绩效管理:** `PerfPlanController`, `PerfResultController`
6. **DRG分析:** `DrgAnalysisController`, `DrgDataController`
7. **AI智能助手:** `AiChatLogController`, `AiConfigController`
8. **知识库管理:** `KnowledgeContentController`, `KnowledgeCategoryController`
9. **数据源管理:** `DataSourceController`, `DataMappingController`, `SyncTaskController`

## Key Configuration Files

- **Backend Config:** `ai58-admin/src/main/resources/application.yml`
- **Dev Config:** `ai58-admin/src/main/resources/application-dev.yml`
- **MyBatis Config:** `ai58-admin/src/main/resources/mybatis/mybatis-config.xml`
- **Frontend Config:** `ai58-ui/vue.config.js`
- **Frontend Proxy:** `ai58-ui/src/utils/request.js`

## Development Guidelines

### Adding New DRM Features

1. **Backend:** Create controller in `ai58-drm/controller/`, service in `ai58-drm/service/`, mapper in `ai58-drm/mapper/`
2. **Frontend:** Create API file in `src/api/drm/`, view component in `src/views/drm/`
3. **Permissions:** Add permission checks using `@PreAuthorize` annotation
4. **Logging:** Add `@Log` annotation for audit trail

### Code Generation

The system includes a code generator accessible at `/tool/gen` that can generate:
- Domain entities
- Mapper interfaces and XML
- Service interfaces and implementations
- Controllers
- Frontend Vue components

### API Patterns

Frontend API calls use axios with request/response interceptors:
- Base URL configured via `VUE_APP_BASE_API` environment variable
- JWT token attached via `Authorization` header
- Error handling centralized in `src/utils/request.js`

### MyBatis Mapper Locations

MyBatis XML mappers are located in: `src/main/resources/mapper/`
- System module: `mapper/system/Sys*.xml`
- DRM module: `mapper/drm/*.xml`

## Important Notes

- The system uses a custom permission framework based on Spring Security
- All controllers return `AjaxResult` for standardized responses
- Pagination uses `PageHelper` and `TableDataInfo`
- File uploads use `@interface` annotations in domain objects
- The system supports multiple data sources via `@DataSource` annotation
- Redis caching is used for session management and data caching
