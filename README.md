# asana-rl-seed-data-simulation
his project generates a realistic synthetic dataset representing how a large B2B SaaS organization (5,000–10,000 employees) uses Asana for engineering, marketing, and operations workflows. The primary objective is to create enterprise-grade seed data suitable for reinforcement learning environments, enabling meaningful evaluation of AI agents interacting with project management systems.
The generated SQLite database models core Asana entities, including organizations, teams, users, projects, sections, tasks, subtasks, comments, custom fields, and tags. Data distributions are intentionally non-uniform to reflect real-world behavior, incorporating overdue tasks, unassigned items, uneven workloads, and varying completion rates across project types.

Key design principles include:
1.Data Realism: Task names, descriptions, due dates, and completion patterns are based on observed industry workflows and productivity benchmarks.
2.Temporal Consistency: All time-based fields obey logical constraints (e.g., tasks cannot be completed before creation).
3.Relational Consistency: Referential integrity is enforced across all entities, ensuring valid team memberships, assignments, and project structures.

The system is modular, configurable, and reproducible, with clear separation between schema design, data generation logic, and orchestration. The final output is a fully populated SQLite database suitable for initializing RL environments or conducting offline evaluation of computer-use AI agents.
This project prioritizes methodological clarity and realism over raw scale and is intended strictly for research and evaluation purposes.
