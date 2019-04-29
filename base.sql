-- name, color, origin, and stink_level.
-- Roquefort, a yellow french cheese
-- Epoisses, an orange french cheese
-- Charolais, a white french cheese
-- Maroilles, a white french cheese
-- Durrus, a yellow Irish cheese
-- Hooligan, a yellow American cheese
-- Teleme, a white american cheese
-- Stichelton, a white English cheese

BEGIN;

SET client_encoding = 'UTF-8';

CREATE TABLE cheese (
    id SERIAL PRIMARY KEY NOT NULL,
    name text NOT NULL,
    color text NOT NULL,
    origin text NOT NULL,
    stink_level integer NOT NULL
);

COPY cheese (id, name, color, origin, stink_level) FROM stdin;
1	Roquefort	Yellow	French	5
2	Epoisses	Orange	French	9
3	Charolais	White	French	5
4	Maroilles	White	French	10
5	Durrus	Yellow	Irish	2
6	Hooligan	Yellow	American	3
7	Teleme	White	American	2
8	Stichelton	White	English	4
\.

COMMIT;