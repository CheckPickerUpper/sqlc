CREATE TABLE imports (
    import_id TEXT NOT NULL PRIMARY KEY,
    import_state_json TEXT NOT NULL,
    import_state_text TEXT GENERATED ALWAYS AS (json_extract(import_state_json, '$.kind')) STORED NOT NULL,
    import_kind_text TEXT GENERATED AS (json_extract(import_state_json, '$.kind')) VIRTUAL
);
