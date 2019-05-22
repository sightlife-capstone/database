INSERT INTO continent(continentName)
VALUES
    ('Asia'),
    ('Africa'),
    ('North America'),
    ('South America'),
    ('Antarctica'),
    ('Europe'),
    ('Oceania');


INSERT INTO country(continentID, countryName)
VALUES
    (1, 'India'),
    (1, 'China'),
    (3, 'Mexico');


INSERT INTO region(countryID, regionName)
VALUES
    (1, 'Northern'),
    (1, 'North Eastern'),
    (1, 'Eastern'),
    (1, 'Central'),
    (1, 'Western'),
    (1, 'Southern');

