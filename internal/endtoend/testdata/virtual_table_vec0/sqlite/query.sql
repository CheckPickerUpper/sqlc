-- name: FindNearestPassages :many
SELECT passage_row_id, distance
FROM passage_embeddings
WHERE embedding MATCH ?
  AND model_revision_text = ?
ORDER BY distance
LIMIT ?;

-- name: GetEmbeddingRowid :one
SELECT rowid, passage_row_id FROM passage_embeddings WHERE passage_row_id = ?;
