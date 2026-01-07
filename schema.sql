
CREATE TABLE organizations (
    org_id TEXT PRIMARY KEY,
    name TEXT,
    created_at TIMESTAMP
);

CREATE TABLE teams (
    team_id TEXT PRIMARY KEY,
    org_id TEXT,
    name TEXT
);

CREATE TABLE users (
    user_id TEXT PRIMARY KEY,
    org_id TEXT,
    name TEXT,
    email TEXT,
    role TEXT
);

CREATE TABLE team_memberships (
    team_id TEXT,
    user_id TEXT,
    PRIMARY KEY (team_id, user_id)
);

CREATE TABLE projects (
    project_id TEXT PRIMARY KEY,
    team_id TEXT,
    name TEXT,
    type TEXT,
    created_at TIMESTAMP
);

CREATE TABLE sections (
    section_id TEXT PRIMARY KEY,
    project_id TEXT,
    name TEXT
);

CREATE TABLE tasks (
    task_id TEXT PRIMARY KEY,
    project_id TEXT,
    section_id TEXT,
    parent_task_id TEXT,
    name TEXT,
    description TEXT,
    assignee_id TEXT,
    created_at TIMESTAMP,
    due_date DATE,
    completed INTEGER,
    completed_at TIMESTAMP
);

CREATE TABLE comments (
    comment_id TEXT PRIMARY KEY,
    task_id TEXT,
    user_id TEXT,
    content TEXT,
    created_at TIMESTAMP
);

CREATE TABLE tags (
    tag_id TEXT PRIMARY KEY,
    name TEXT
);

CREATE TABLE task_tags (
    task_id TEXT,
    tag_id TEXT,
    PRIMARY KEY (task_id, tag_id)
);

CREATE TABLE custom_field_definitions (
    field_id TEXT PRIMARY KEY,
    project_id TEXT,
    name TEXT,
    type TEXT
);

CREATE TABLE custom_field_values (
    task_id TEXT,
    field_id TEXT,
    value TEXT,
    PRIMARY KEY (task_id, field_id)
);
