# 🚀 EcomiqX – Base Platform

EcomiqX is a scalable **multi-vendor eCommerce platform** designed using a modern **microservices-ready architecture** with **Spring Boot backend** and **modular frontend**.

This repository contains the **base platform** that serves as the foundation for all features.

---

## 🧱 What This Repository Contains (Base Code)

This codebase includes only the **platform skeleton**:

### Backend
- Spring Boot application
- Database configuration
- Security & environment setup
- Folder structure for:
  - Controllers
  - Services
  - Repositories
  - Entities

### Frontend
- Application shell
- Routing structure
- Layout & core UI
- API service layer
- Environment configuration

### DevOps
- Environment files
- Project structure
- Build configuration

This base code is the **v0.1 foundation** of EcomiqX.

---

## ❌ What Is NOT Included

This branch does NOT contain:
- Login system
- Product management
- Orders
- Payments
- Vendor features
- UI pages

All features are developed on **feature branches** and merged via **develop**.

---

## 🌿 Branch Strategy

This repository follows **GitFlow**:
```feature-*  →  develop  →  release/*  →  main```
```
| Branch | Purpose |
|-------|--------|
| `main` | Live production |
| `develop` | Integration & testing |
| `feature-*` | Feature development |
| `release/*` | Production preparation |
| `hotfix/*` | Production fixes |

---

## 👥 Team Roles

| Role | Responsibility |
|------|----------------|
| **Brijesh** (Tech Lead) | Architecture, base code, production |
| **Shrisht** (Developer) | Feature development |

Only the Tech Lead modifies:
- Project structure
- Database config
- Core frameworks

---

## 🔐 Contribution Rules

- Never push directly to `main` or `develop`
- All code goes through Pull Requests
- Features must target `develop`
- Production comes only from `release/*`

---

## 🏗 How to Start Development

```bash
git clone https://github.com/tecresearch/ecomiqx.git
cd ecomiqx
git checkout develop
git checkout -b feature-your-feature
```
---
After Coding 
---
```feature-your-feature → PR → develop```
