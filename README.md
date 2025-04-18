# Exercise App

## Overview

This is an **exercise tracking app** built with **Next.js**, **Prisma**, and **TanStack Query**. The goal is to provide a clean, functional UI for searching exercises, creating workouts, and organizing fitness routines. This is a **portfolio project** and is not a commercial product.

## Tech Stack

- **Frontend:** Next.js (React-based framework)
- **Data Fetching & State Management:** TanStack Query
- **Database ORM:** Prisma
- **Local Database:** Dockerized PostgreSQL
- **Media Server:** Nginx container serving static images

## Features & Roadmap

### Phase 1: MVP (Complete)
- ✅ Basic CRUD for exercises
- ✅ Search page

### Phase 2: UX & Core Functionality
- 🔜 Thumbnails for each exercise
- 🔜 Workout creation and editing
- ⬜ Autocomplete search
- ⬜ Sort/filter exercises by tags (muscle group, equipment, difficulty)
- ⬜ Related exercise suggestions

### Phase 3: User Personalization
- ⬜ User authentication (email or social login)
- ⬜ Save custom workout plans
- ⬜ View history or mark favorites

---

## System Requirements

To run this project locally, you’ll need:

- [Node.js](https://nodejs.org/) (v18+ recommended)
- [npm](https://www.npmjs.com/) or [yarn](https://yarnpkg.com/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop) installed and running

> Docker is required to run the local PostgreSQL database and media server.

---

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/adam-kb/exercise-app-public.git
cd exercise-app-public
```

### 2. Create a `.env` File

Copy the example environment file:

```bash
cp .env.example .env
```

Ensure the values in `.env` match your Docker container setup. The provided defaults should work for most local environments.

### 3. Run the Project Setup

Choose one of the following:

**Option A: npm script**

```bash
npm run setup:all
```

**Option B: bash script**

```bash
bash scripts/setup.sh
```

This will:
- Install dependencies
- Start Docker containers
- Generate the Prisma client
- Push the database schema
- Seed the database

### 4. Start the Development Server

```bash
npm run dev
```

Open the app at [http://localhost:3000](http://localhost:3000)

---

## Media Folder

The app serves images from the `/media` directory. These include exercise thumbnails and other static content.

If you're running the project locally:
- Add placeholder images to `/media/thumbnails/` if none exist
- You may include your own demo images
- The `.gitkeep` file ensures this directory is versioned even if empty

---

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). Feel free to fork, modify, or contribute.

---

## Disclaimer

This project is a personal portfolio piece. It is not intended for real-world use or fitness instruction. Always consult a qualified health professional before beginning any new exercise program.
