# Git & GitHub CLI Commands and Spring Boot PostgreSQL Setup

## ✅ Git Config Tweaks for Large Pushes
```bash
git config --global http.postBuffer 524288000
git config --global http.maxRequestBuffer 524288000
git config --global http.lowSpeedLimit 0
git config --global http.lowSpeedTime 999999
git config --global core.compression 0
```

## ✅ Push Without Thinning
```bash
git push origin main --no-thin
```

## ✅ Optimize Repository with Repack
```bash
git repack -a -d --window=250 --depth=250
```

## ✅ Install GitHub CLI
```bash
winget install --id GitHub.cli
```

## ✅ Install GitHub Copilot
```bash
winget install GitHub.Copilot
```

## ✅ Spring Boot PostgreSQL Setup
**Driver:**
```properties
spring.datasource.driver-class-name=org.postgresql.Driver
```

**Environment Variables:**
```properties
SPRING_DATASOURCE_URL=jdbc:postgresql://localhost:5432/your-db-name
SPRING_DATASOURCE_USERNAME=
SPRING_DATASOURCE_PASSWORD=
```

**Maven Dependency:**
```xml
<dependency>
    <groupId>org.postgresql</groupId>
    <artifactId>postgresql</artifactId>
    <scope>runtime</scope>
</dependency>
```

## ✅ Git Cleanup
```bash
git fetch --prune
```
