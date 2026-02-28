<p align="center">
  <img src="docs/assets/logo.png" alt="Searchat Behavior Banner" width="50%">
</p>
<p align="center">
A standardized framework for capturing authentic human behavior in search and AI-chat experiments.
</p>
<p align="center">
  <img src="https://img.shields.io/badge/version-1.0.0-004b8d" alt="Version">
  <a href="./LICENSE"><img src="https://img.shields.io/badge/license-MIT-2fb594" alt="License"></a>
  <img src="https://img.shields.io/badge/Research-Tool-orange" alt="Tool">
</p>

## Desciption
Searchat Behavior is an end-to-end experimental framework for creating, managing, and running controlled experiments focused on user behavior during interactions with search engines and chat-based systems. The framework is designed to support empirical studies on how users search for information or  interact with conversational agents. It provides researchers with a complete toolchain to design experiments, deploy them as web-based studies, collect fine-grained interaction logs, visualize users data, and export standardized data for analysis and replication.

Searchat Behavior is domain-agnostic and can be used in any context where understanding how users explore, search, or interact with conversational tools is essential.



## 🚀 Key Features
- End-to-end experimentation support: from experiment design to data collection
- Web-based platform accessible to researchers and participants
- Support for search-based and chat-based interaction tasks
- Fine-grained logging of user actions (queries, clicks, messages, timing, navigation, etc.)
- Configurable experimental workflows and tasks
- Separation of researcher and participant interfaces
- Designed for empirical, reproducible, and extensible research



## 🧠 Typical Use Cases
Searchat Behavior can be used to support experiments such as:
- Studying exploratory search behavior in open-ended information tasks
- Analyzing user interactions with chatbots or conversational agents
- Comparing search-based and chat-based information access strategies
- Investigating decision-making, engagement, and interaction patterns


## 🏗️ System Architecture (High-Level)

Searchat Behavior follows a web-based client–server architecture composed of:
- Frontend (Web Application): Provides user interfaces for both researchers and participants.
- Backend (API Server): Handles experiment management, business logic, authentication, and data persistence.
- Data Layer: Stores experiment configurations, participant information, and detailed interaction logs.

The system supports two main user roles:
- Researchers: design, configure, deploy, and monitor experiments
- Participants: take part in experiments by interacting with search engines or chat tools

> **⚠️ Running Services Independently**
> The instructions below in the **Getting Started** guide are for running the **entire stack together** using `Docker Compose`. If you wish to run the Frontend or Backend individually (e.g., for local development or native execution without Docker), please navigate to their respective submodule directories and follow the specific instructions in their individual `README.md` files:
> - **Backend API:** `xperframe4sal-backend/README.md`
> - **Frontend UI:** `xperframe4sal-frontend/README.md`
---

## 🛠️ Getting Started

### 📋 Prerequisites

Before you begin, make sure you have the following tools installed on
your machine:

-   **Git** -- to clone the repository and its submodules\
-   **Docker** and **Docker Compose** -- to orchestrate the database,
    backend API, and frontend

------------------------------------------------------------------------

## 1️⃣ Clone the Repository

This repository uses **Git submodules**, so you must clone it
recursively:

``` bash
git clone --recurse-submodules https://github.com/Framework-for-Search-as-Learning/xperframe4sal.git
cd xperframe4sal
```

If you already cloned the repository without submodules, initialize them
with:

``` bash
git submodule update --init --recursive
```

------------------------------------------------------------------------

## 2️⃣ Configure Environment Variables

The docker-compose.yml file is pre-configured with fallback values for a quick start. For deploying your instance of the system we highly recommend you to change those credentials.

The environment variables are:
-   `DB_USER` -- PostgreSQL user (default: `postgres`)
-   `DB_PASSWORD` -- PostgreSQL password (default: `postgres`)
-   `DB_NAME` -- Database name (default: `sal`)
-   `SECRET` -- Secret key used by the backend for JWT authentication. (no default value, configure it yourself)

If you want to override default values (e.g., for production or a custom local setup), you need to export the new values for these variables. Two simple alternatives are:

### ✅ Alternative A: Using a `.env` file (Recommended for custom setups)

Copy the provided `.env.example` file and rename it to `.env`:

**🐧 Linux / 🍏 macOS**

``` bash
cp .env.example .env
```

**🪟 Windows (CMD/PowerShell)**

``` bash
copy .env.example .env
```

Then open the `.env` file and edit it with your preferred values.

### 💻 Alternative B: Using the Command Line (CLI)

You can skip creating a `.env` file and pass the variables directly via
CLI when starting the containers. For instance:

#### Via CLI (Linux/macOS):

``` bash
DB_USER=postgres DB_PASSWORD=postgres DB_NAME=sal SECRET=your_jwt_secret docker compose up --build
```

#### Via CLI (Windows PowerShell):

``` bash
$env:DB_USER="postgres";
$env:DB_PASSWORD="postgres";
$env:DB_NAME="sal";
$env:SECRET="your_jwt_secret";
docker compose up --build
```

------------------------------------------------------------------------

## 3️⃣ Build and Run the Containers

The system consists of three main services configured in Docker Compose:

-   `postgres-api` -- Database\
-   `api` -- Backend\
-   `front` -- Frontend Web

> ⚠️ The `--build` flag is only required on the first run or when there
> are structural changes (such as installing new dependencies).

### 🚀 First Run (or After Installing New Packages)

``` bash
docker compose up --build
```


### ⚡ Other Executions (Fast Start)

``` bash
docker compose up
```

To run in detached mode (free your terminal window):

``` bash
docker compose up -d
```

------------------------------------------------------------------------

## 4️⃣ Accessing the Application

-   💻 **Frontend (UI):** http://localhost:3001\
-   ⚙️ **Backend API:** http://localhost:3000

-----------------------------------------------------------------------

## 🧠 Technical Notes

### 💾 Data Persistence

To completely wipe the database and start fresh:

``` bash
docker compose down -v
```



## 📄 License

Released under the [MIT license](./LICENSE).
