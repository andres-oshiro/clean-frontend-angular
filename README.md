# WIP: Clean Architecture for Angular

- [Clean architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html) to improve productivity across all projects.
  - It is framework agnostic so can apply across all projects.
  - Helps to improve team productivity by separating responsibilities.
- Readable code to improve maintainability.
  - Readable code saves future developers time and effort.
    Code readability is key for large software projects with many developers, and where the source code that is being written will have to be modified by another person.
  - Usually, readable code leads to a good implementation of the user's requirements and makes it easier to tune performance.

## Blueprint

- [Signals](https://angular.io/guide/signals) with [services](https://angular.io/guide/architecture-services) for state management.
- ..

![architecture](./docs/images/architecture.png)

## Directory structure

```sh
├── docs
├── scripts
└── src
    ├── app
    │    ├── assets
    │    ├── core
    │    └── features
    │        │
    │        │
    │        ├── data
    │        │   ├── datasources
    │        │   └── repositories
    │        ├── domain
    │        │   ├── interfaces
    │        │   ├── entities
    │        │   └── usecases
    │        └── presentation
    │            ├── pages
    │            │   ├── showcases
    │            │   ├── dashboard
    │            │   ├── sign-in
    │            │   └── sign-out
    │            └── shared
    │                └── components
    │                    ├── atoms
    │                    ├── molecules
    │                    └── organisms
    │
    ├── mock
    │   ├── data
    │   └── server
    └── test
```

## Setup

- Pre-requisites

  - Install Node v19.
    - You can manage node versions with [volta](https://docs.volta.sh/guide) (Volta is not required)
  - Install [VScode](https://code.visualstudio.com/) or [VScodium](https://vscodium.com).

- Setup project

  - Clone repository

    ```sh
    git clone git@github.com:andres-oshiro/clean-frontend-angular.git
    ```

  - Change directory

    ```sh
    cd clean-frontend-angular
    ```

  - Execute setup script

    - Mac users

      ```sh
      ./scripts/mac/setup/init.sh
      ```

    - Windows users

      ```sh
      ./scripts/windows/setup/init.ps1
      ```

## Quick start

- Start app

  ```sh
  npm run start:mock
  ```
