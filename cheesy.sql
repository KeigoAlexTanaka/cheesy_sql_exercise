-- **CHOOSING CHEESE**
-- Find all the cheeses
SELECT * FROM cheese;

-- Find all the French cheeses

SELECT * FROM cheese WHERE origin = 'French';

-- Find all the English cheeses

SELECT * FROM cheese WHERE origin = 'English';

-- Find all cheeses with a stink level of 2

SELECT * FROM cheese WHERE stink_level = 2;

-- Find all cheeses with a stink level of 10

SELECT * FROM cheese WHERE stink_level = 10;

-- Find all yellow cheeses with a stink level of 5

SELECT * FROM cheese WHERE stink_level = 5 AND color='Yellow';

-- Find all Irish cheeses with a stink level of 6

SELECT * FROM cheese WHERE stink_level = 6 AND origin='Irish';

-- Find all cheeses with a stink level of at least 4, but no greater than 8.

SELECT * FROM cheese WHERE stink_level>=4 AND stink_level<=8;

-- Find all American and English cheeses.

SELECT * FROM cheese WHERE origin = 'English' OR origin='American';

-- Find all cheeses that are not from France.
SELECT * FROM cheese WHERE origin != 'France';


-- **RESTOCKING CHEESE**
-- Change the stink level of Roquefort to 3

UPDATE cheese SET stink_level = 3 WHERE name = 'Roquefort';


-- Change the color of Teleme to "mauve"

UPDATE cheese SET color = 'mauve' WHERE name = 'Teleme';

-- Delete the Hooligan cheese

DELETE FROM cheese where name = 'Hooligan';

-- Change the stink level of Stichelton to be 7

UPDATE cheese SET stink_level = 7 WHERE name = 'Stichelton';

-- Add the cheese "Monterey Jack", an American cheese with a stink level of 0
INSERT INTO cheese VALUES (6, 'Monterey Jack', 'Yellow' , 'American', 0 );

-- Add a column named animal_milk with a datatype of VARCHAR(50) to the cheeses table (see table below)
ALTER TABLE Cheese ADD animal_milk varchar(50);

-- Add a column named paseurized with a boolean datatype 
ALTER TABLE Cheese ADD pasteurized boolean;

-- Add the new cheese data
UPDATE cheese SET animal_milk='Cow';
UPDATE cheese SET pasteurized=true;

-- Change the name of Montery Jack to Pepper Jack
UPDATE cheese SET name = 'Pepper Jack' WHERE name = 'Monterey Jack';