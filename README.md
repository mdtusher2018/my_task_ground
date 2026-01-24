# Flutter Product App

A Flutter application demonstrating **Clean Architecture** principles with **BLoC** state management, focused on scalability, maintainability, and clear separation of concerns.

---

## 📱 Features

* Product listing
* Category-wise product browsing
* Keyword-based search (**implemented on Home page**)
* Product details view
* Clean UI based on provided Figma design
* API integration
* Scalable and maintainable architecture

---

## 🧠 State Management

* **BLoC (Business Logic Component)**
* Event-driven architecture
* Clear separation between UI and business logic

---

## 🏗 Architecture

The project follows **Clean Architecture** with a layered approach:

```
lib/
├── src/
│   ├── core/
│   │   ├── base
│   │   ├── di
│   │   ├── router
│   │   ├── services
│   │   ├── themes
│   │   └── utils
│   │
│   ├── data/
│   │   ├── models
│   │   └── repositories
│   │
│   ├── domain/
│   │   ├── entities
│   │   ├── repositories
│   │   └── usecase
│   │
│   └── presentation/
│       ├── shared
│       └── views/
│           ├── all_products
│           ├── home
│           ├── product_by_category
│           └── product_details
│
└── main.dart
```

### Layer Responsibilities

* **Presentation**: UI, BLoC, events, and states
* **Domain**: Business logic, entities, and use cases
* **Data**: API models and repository implementations
* **Core**: Dependency injection, routing, themes, and utilities

---

## 🔍 Search Functionality

* Keyword-based and category-wise search is **fully implemented on the Home page**.
* Other pages currently include **search UI only**, without functional logic.
* The current BLoC structure allows easy extension of search functionality across the app.

---

## 🔗 API Integration

* API-driven data flow
* Clean mapping between API models and domain entities
* Loading and error states handled via BLoC

---

## 🧪 Screenshots

Screenshots of all implemented screens are included in the repository.

Example structure:

```
assets/screenshots/
├── home.png
├── product_list.png
├── product_details.png
```

---

## 🧩 Key Dependencies

* flutter_bloc
* equatable
* http / dio
* freezed / json_serializable
* photo_view

---

## 📌 Notes

* Code is written with readability and maintainability in mind
* Follows Flutter best practices and BLoC conventions
* Architecture is designed for easy feature expansion and testing

---

## 👤 Author

**Shairfin Alamin**
Flutter Developer
GitHub: [https://github.com/mdtusher2018](https://github.com/mdtusher2018)
