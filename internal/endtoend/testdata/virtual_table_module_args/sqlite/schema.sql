CREATE VIRTUAL TABLE locations USING rtree(id, minX, maxX, minY, maxY);

CREATE VIRTUAL TABLE points USING demo_module(
    row_id INTEGER PRIMARY KEY,
    label text,
    coords float[3] metric=euclidean,
    page_size=4096
);
