# 📦 Flutter Task Submission

A scalable Flutter application built using **Clean Architecture**, **Riverpod state management**, and a feature-based modular structure.

This project demonstrates proper separation of concerns, maintainable code structure, and production-ready architecture patterns.

---
Projects Initially created from the git clone of my_flutter_learn (it workes as a templete)
---

# 🚀 Tech Stack

* Flutter
* Dart
* Riverpod (State Management)
* Clean Architecture
* Repository Pattern
* Dependency Injection
* NestedScrollView + Slivers
* Feature-based Folder Structure

---

# 🏗 Architecture Overview

The project follows **Clean Architecture** principles with three main layers:

```
lib/src
│
├── core
├── data
├── domain
└── presentation
```

---

# 📁 Folder Structure Explanation

## 🔹 1️⃣ Core Layer (`core/`)

Contains shared utilities and app-level configurations.

```
core/
├── base/          → Result, Failure, Base Repository
├── di/            → Dependency Injection
├── router/        → App routing
├── services/      → Network, storage, snackbar
├── themes/        → App colors & theme
└── utils/         → Logger, API endpoints, global keys
```

### Purpose:

* Reusable utilities
* App-wide services
* No business logic

---

## 🔹 2️⃣ Data Layer (`data/`)

Responsible for:

* API models
* Repository implementations

```
data/
├── models/
│   ├── all_products_response.dart
│   ├── profile_response.dart
│   └── signin_response.dart
│
└── repositories/
    ├── auth_repository.dart
    ├── product_repository.dart
    └── profile_repository.dart
```

### Responsibilities:

* Convert API JSON → Models
* Implement repository interfaces
* Communicate with network layer

---

## 🔹 3️⃣ Domain Layer (`domain/`)

Contains business logic and abstractions.

```
domain/
├── entities/
│   ├── product_entity.dart
│   ├── signin_entity.dart
│   └── user_profile_entity.dart
│
├── repositories/
│   ├── i_auth_repository.dart
│   ├── i_product_repository.dart
│   └── i_profile_repository.dart
│
└── usecase/
    ├── product_usecase.dart
    ├── profile_usecase.dart
    └── signin_usecase.dart
```

### Responsibilities:

* Pure business logic
* No Flutter imports
* No UI dependencies
* No direct API calls

This layer depends on nothing.

---

## 🔹 4️⃣ Presentation Layer (`presentation/`)

Handles UI and state management.

```
presentation/
├── shared/
│   ├── components/
│   │   ├── common_button.dart
│   │   ├── common_image.dart
│   │   └── common_text.dart
│   │
│   └── widgets/
│       └── product_card.dart
│
└── Views/
    ├── all_products/
    │   ├── riverpod/products_provider.dart
    │   └── all_products_page.dart
    │
    ├── authentication/
    │   ├── riverpod/signin_provider.dart
    │   └── signin_page.dart
    │
    ├── profile/
    │   ├── riverpod/profile_provider.dart
    │   └── profile_page.dart
    │
    └── root_page.dart
```

### Responsibilities:

* UI screens
* Riverpod providers
* State handling
* Reusable widgets

---

# 🧠 Architecture Flow

```
UI (Presentation)
    ↓
Riverpod Provider
    ↓
UseCase (Domain)
    ↓
Repository Interface (Domain)
    ↓
Repository Implementation (Data)
    ↓
Network / API
```

This ensures:

* UI does not depend on API directly
* Business logic is isolated
* Easy testing
* Easy scalability

---

# 🔥 Key Features Implemented

* Clean Architecture Structure
* Riverpod State Management
* Infinite Scroll Pagination
* Pull-to-Refresh
* NestedScrollView with Slivers
* Sticky TabBar
* Feature-based folder structure
* Repository Pattern
* Separation of Domain & Data models
* Reusable UI Components

---

# 🧩 UI Implementation Details

The All Products page uses:

* NestedScrollView
* SliverAppBar
* SliverGrid
* SliverOverlapAbsorber
* SliverOverlapInjector

This enables:

* Collapsible banner
* Sticky TabBar
* Smooth horizontal swipe
* Infinite scroll behavior

---

# 📈 Scalability

This architecture allows:

* Adding new features easily
* Replacing API without affecting UI
* Unit testing business logic independently
* Scaling to large production apps

---

# 📦 Setup & Submission Instructions

## ✅ Environment Requirements

* **Flutter:** 3.22+ (Stable Channel Recommended)
* **Dart SDK:** 3.10.1 (as defined in pubspec.yaml)
* **Android Studio / VS Code**
* **Android Emulator or Physical Device**

Verify installation:

```bash
flutter doctor
```

---

## 🚀 Setup Steps

```bash
git clone <repository-url>
cd my_task_ground
flutter pub get
flutter run
```

---


## 📦 APK Download (CI/CD Enabled)

You can clone the repository and push it to your own GitHub repository.

Inside your repository, navigate to:

```
Actions → Workflows → Upload APK
```

The project includes a minimal CI/CD pipeline that automatically builds the release APK.

After the workflow completes, you will find a downloadable APK file inside the workflow run artifacts.


---


## 🎥 Demo Video

📺 Watch the full walkthrough here:  
https://www.youtube.com/watch?v=LFqwuYu0dJg

---

## 📌 Notes

* Clean Architecture (Presentation → Domain → Data)
* Riverpod for state management
* Repository Pattern implemented
* Scalable & production-ready structure

✨ Thank you for reviewing this submission.




