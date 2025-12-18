# suceb_task

This task consisting of a **Login page** and a **Dashboard**, implemented with **Clean Architecture**, **feature-based structure**, and **Riverpod** for state management.

> ⚠️ Note: The task was UI-focused and only a Figma design was provided. Therefore, full backend/API integration was **not required**. The project demonstrates architectural decisions, code organization, and best practices rather than complete business logic for all features.

---

## 📌 Project Overview

* **Project Name:** suceb_task
* **Platform:** Flutter
* **Architecture:** Clean Architecture
* **Structure:** Feature-based
* **State Management:** Riverpod
* **API:** Dummy API (for login only)
* **Focus:** UI implementation + clean, scalable architecture

---

## 🧱 Architecture Overview

The project follows **Clean Architecture**, separating responsibilities into clear layers:

```
lib/
│── main.dart
│
└── src/
    ├── config/
    │   └── router/
    │       ├── app_routes.dart
    │       └── routes.dart
    │
    ├── core/
    │   ├── services/
    │   │   ├── network/
    │   │   └── localstorage/
    │   ├── utils/
    │   ├── base/
    │   │   ├── repository.dart
    │   │   ├── result.dart
    │   │   └── failure.dart
    │   └── di/
    │
    ├── featured/
    │   ├── auth/
    │   │   ├── data/
    │   │   │   ├── model/
    │   │   │   └── repository/
    │   │   ├── domain/
    │   │   │   ├── repository/
    │   │   │   └── usecase/
    │   │   └── presentation/
    │   │       ├── notifiers/
    │   │       └── pages/
    │   │
    │   └── dashboard/
    │       ├── domain/
    │       │   └── model/
    │       ├── presentation/
    │       │   ├── pages/
    │       │   └── widgets/
    │       └── domain/
    │           └── unimplemented
    │
    └── shared/
        ├── themes/
        │   └── colors.dart
        └── widgets/
            ├── common_text.dart
            └── common_textfield.dart
```

---

## 🔐 Login Feature (Fully Implemented)

The **Login feature** is the only feature fully implemented end-to-end using Clean Architecture.

### Implementation Details

* **State Management:** Riverpod
* **Layers Used:**

  * Data
  * Domain
  * Presentation

### Dummy Authentication Logic

* If email is **`tusher@gmail.com`** → Login **Success**
* Any other email → API call fails

```dart
// Example logic (simplified)
if (email == 'tusher@gmail.com') {
  return LoginSuccess(dommy_data);
} else {
  return Failure();
}
```

* A dummy API endpoint (`http://dommyapi.com`) is intentionally called for failure cases.
* This demonstrates **repository responsibility** and error handling.

✅ This section showcases:

* Proper separation of concerns
* Repository pattern
* Use cases
* Riverpod notifiers

---

## 📊 Dashboard Feature (UI-Oriented)

The **Dashboard** was implemented primarily from a **UI perspective**, as per the task requirement.

### Pages Implemented

1. **Dashboard Empty View**
2. **Main Dashboard View**
3. **Energy Data Details View**

### Key Notes

* Folder structure follows Clean Architecture principles. Since no API was required for the dashboard, this separation is mainly used for clean code organization and widget reusability.
* **No API calls implemented** for dashboard
* **No Riverpod notifiers implemented** for dashboard
* Only **domain models** were created where necessary to keep code clean

---

## 🚧 Unimplemented Sections

To maintain clarity for reviewers:

* An `unimplemented/` file is added in folders which is skiped
* Contains placeholder files indicating intentionally skipped logic
* Helps reviewers **easily identify** what was not part of the task scope

```dart
// unimplemented file
// This section is intentionally left unimplemented
// as the task was focused on UI only
```

---

## 🧩 Widgets Strategy

* Reusable widgets are placed under:

  * `shared/widgets` → app-wide reusable widgets
  * `dashboard/presentation/widgets` → dashboard-only widgets

This ensures:

* Clean UI code
* Better readability
* Scoped widget usage

---

## 🎨 UI Implementation

* UI strictly follows the provided **Figma design**
* Consistent theming using `AppColors`
* Layout logic kept minimal in pages by extracting widgets

---

## 🎯 Why This Approach?

* Demonstrates **real-world scalable architecture**
* Shows understanding of Clean Architecture even for UI-heavy tasks
* Makes it easy to extend the project with real APIs later
* Keeps reviewer experience simple and transparent

---

## ✅ Summary

* ✔ Login: Fully implemented with Clean Architecture + Riverpod
* ✔ Dashboard: UI-complete, architecture-ready
* ✔ Feature-based scalable structure
* ✔ Clear separation of implemented vs non-implemented logic

This project focuses on **code quality, structure, and architectural clarity**, aligned with the expectations of an interview assignment.

---

**Thank you for reviewing this task.**

