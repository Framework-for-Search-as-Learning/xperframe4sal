# Searchat Behavior

Searchat Behavior is an end-to-end experimental framework for creating, managing, and running controlled experiments focused on user behavior during interactions with search engines and chat-based systems. The framework is designed to support empirical studies on how users search for information or  interact with conversational agents. It provides researchers with a complete toolchain to design experiments, deploy them as web-based studies, collect fine-grained interaction logs, and export standardized data for analysis and replication.

Searchat Behavior is domain-agnostic and can be used in any context where understanding how users explore, search, or interact with conversational tools is essential.

---

🚀 Key Features

- End-to-end experimentation support: from experiment design to data collection
- Web-based platform accessible to researchers and participants
- Support for search-based and chat-based interaction tasks
- Fine-grained logging of user actions (queries, clicks, messages, timing, navigation, etc.)
- Configurable experimental workflows and tasks
- Separation of researcher and participant interfaces
- Designed for empirical, reproducible, and extensible research

---

🧠 Typical Use Cases

Searchat Behavior can be used to support experiments such as:
- Studying exploratory search behavior in open-ended information tasks
- Analyzing user interactions with chatbots or conversational agents
- Comparing search-based and chat-based information access strategies
- Investigating decision-making, engagement, and interaction patterns
- Running controlled user studies on interactive information systems

---

🏗️ System Architecture (High-Level)

Searchat Behavior follows a web-based client–server architecture composed of:
- Frontend (Web Application): Provides user interfaces for both researchers and participants.
- Backend (API Server): Handles experiment management, business logic, authentication, and data persistence.
- Data Layer: Stores experiment configurations, participant information, and detailed interaction logs.

The system supports two main user roles:
- Researchers: design, configure, deploy, and monitor experiments
- Participants: take part in experiments by interacting with search engines or chat tools

---

## 🛠️ Getting Started

### Clone the Repository

This repository uses **Git submodules**. Make sure to clone it recursively:

```bash
git clone --recurse-submodules https://github.com/Framework-for-Search-as-Learning/xperframe4sal.git
```

If you already cloned the repository without submodules, initialize them with:

```bash
git submodule update --init --recursive
```

---

📄 License

Released under the [MIT license](./LICENSE).