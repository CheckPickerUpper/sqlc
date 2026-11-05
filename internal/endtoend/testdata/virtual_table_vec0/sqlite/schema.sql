CREATE VIRTUAL TABLE passage_embeddings USING vec0(
    passage_row_id INTEGER PRIMARY KEY,
    model_revision_text text partition key,
    embedding float[384] distance_metric=cosine
);
