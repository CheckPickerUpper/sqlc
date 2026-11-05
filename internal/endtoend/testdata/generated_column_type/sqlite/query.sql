-- name: GetImport :one
SELECT import_id, import_state_text, import_kind_text FROM imports WHERE import_id = ?;
