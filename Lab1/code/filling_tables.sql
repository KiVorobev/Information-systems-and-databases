INSERT INTO person(name, age)
VALUES ('Olvin', 20),
       ('Khilvar', 28),
       ('Hadron', 45),
       ('Alistra', 19),
       ('Gizirak', 30);

INSERT INTO fortress(name, height)
VALUES ('Shalmyrain', 30),
       ('Dubrovnik', 25),
       ('Avila', 12),
       ('Sian', 20),
       ('Kharar', 5);

INSERT INTO information(content)
VALUES ('In the north'),
       ('Over there'),
       ('Between the rocks 20 meters from the column'),
       ('To the East across the sea in front of the mountain'),
       ('50 meters to the South of the wooden hut');

INSERT INTO possession_of_information(person_id, information_id)
VALUES ((SELECT (id) FROM person WHERE name = 'Olvin'),
        (SELECT (id) FROM information WHERE content = 'Over there')),
       ((SELECT (id) FROM person WHERE name = 'Khilvar'), (SELECT (id)
                                                           FROM information
                                                           WHERE content = 'In the north')),
       ((SELECT (id) FROM person WHERE name = 'Hadron'), (SELECT (id)
                                                          FROM information
                                                          WHERE content = 'Between the rocks 20 meters
from the column')),
       ((SELECT (id) FROM person WHERE age = 19), (SELECT (id)
                                                   FROM information
                                                   WHERE content = 'To the East across the sea in
front of the mountain')),
       ((SELECT (id) FROM person WHERE age = 30), (SELECT (id)
                                                   FROM information
                                                   WHERE content = '50 meters to the South of the
wooden hut')),
       ((SELECT (id) FROM person WHERE age = 20), (SELECT (id)
                                                   FROM information
                                                   WHERE content = 'In the north'));

INSERT INTO direction(person_id, information_id, fortress_id)
VALUES ((SELECT (id) FROM person WHERE name = 'Olvin'),
        (SELECT (id) FROM information WHERE content = 'Over there'),
        (SELECT (id) FROM fortress WHERE name = 'Shalmyrain')),
       ((SELECT (id) FROM person WHERE age = 28), (SELECT (id)
                                                   FROM information
                                                   WHERE content = 'In the north'), (SELECT (id)
                                                                                     FROM fortress
                                                                                     WHERE height = 25)),
       ((SELECT (id) FROM person WHERE age = 30), (SELECT (id)
                                                   FROM information
                                                   WHERE content = 'To the East across the sea in
front of the mountain'), (SELECT (id)
                          FROM fortress
                          WHERE height =
                                5)),
       ((SELECT (id) FROM person WHERE age = 19), (SELECT (id)
                                                   FROM information
                                                   WHERE content = 'Between the rocks 20 meters
from the column'), (SELECT (id) FROM fortress WHERE height = 20)),
       ((SELECT (id) FROM person WHERE age = 45), (SELECT (id)
                                                   FROM information
                                                   WHERE content = '50 meters to the South of the
wooden hut'), (SELECT (id) FROM fortress WHERE height = 12));

INSERT INTO contact(first_id, second_id, relation)
VALUES ((SELECT (id) FROM person WHERE name = 'Khilvar'),
        (SELECT (id) FROM person WHERE name = 'Hadron'), 'Friend'),
       ((SELECT (id) FROM person WHERE name = 'Hadron'), (SELECT (id)
                                                          FROM person
                                                          WHERE name = 'Khilvar'), 'Best friend'),
       ((SELECT (id) FROM person WHERE age = 30), (SELECT (id)
                                                   FROM person
                                                   WHERE name = 'Olvin'), 'Best friend'),
       ((SELECT (id) FROM person WHERE name = 'Alistra'), (SELECT (id)
                                                           FROM person
                                                           WHERE age = 30), 'husband'),
       ((SELECT (id) FROM person WHERE age = 20), (SELECT (id)
                                                   FROM person
                                                   WHERE age = 45), 'Father'),
       ((SELECT (id) FROM person WHERE name = 'Olvin'), (SELECT (id)
                                                         FROM person
                                                         WHERE age = 19), 'Girlfriend')