-- name: ListLocations :many
SELECT id, minX, maxX FROM locations;

-- name: GetPoint :one
SELECT row_id, label, coords FROM points WHERE row_id = ?;
