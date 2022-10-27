CREATE TABLE person
(
    id   SERIAL PRIMARY KEY,
    name varchar(20) NOT NULL,
    age  integer     NOT NULL CHECK (age >= 0)
);

CREATE TABLE fortress
(
    id     SERIAL PRIMARY KEY,
    name   varchar(30) NOT NULL,
    height integer     NOT NULL CHECK (height > 0)
);

CREATE TABLE information
(
    id      SERIAL PRIMARY KEY,
    content varchar(300) NOT NULL
);

CREATE TABLE possession_of_information
(
    person_id      INTEGER REFERENCES person,
    information_id INTEGER REFERENCES information,
    PRIMARY KEY (person_id, information_id)
);

CREATE TABLE direction
(
    person_id      INTEGER REFERENCES person,
    information_id INTEGER REFERENCES information,
    fortress_id    INTEGER REFERENCES fortress,
    PRIMARY KEY (person_id, fortress_id)
);

CREATE TABLE contact
(
    first_id  INTEGER REFERENCES person,
    second_id INTEGER REFERENCES person,
    PRIMARY KEY (first_id, second_id),
    CHECK (first_id != second_id),
    relation  varchar(20) NOT NULL
);
