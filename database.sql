CREATE TABLE survivor (
    id integer PRIMARY KEY,
    first_name varchar(50),
    middle_name varchar(50) NULL,
    last_name varchar(50)
);

CREATE TABLE killer (
    id integer PRIMARY KEY,
    alias varchar(50)
);

CREATE TABLE chapter (
    id integer PRIMARY KEY,
    name varchar(50),
    price money NULL
);

ALTER TABLE chapter ADD COLUMN survivor_id integer REFERENCES survivor(id);

ALTER TABLE chapter ADD COLUMN killer integer REFERENCES killer(id);

CREATE TABLE perk (
    id integer PRIMARY KEY,
    name varchar(50),
    description varchar(200),
    survivor_id integer REFERENCES survivor(id) NULL,
    killer_id integer REFERENCES killer(id) NULL
);

INSERT INTO survivor VALUES (
    1,
    'Dwight',
    NULL,
    'Fairfield'
);

INSERT INTO survivor VALUES (
    2,
    'Meg',
    NULL,
    'Thomas'
);

INSERT INTO survivor VALUES (
    3,
    'Claudette',
    NULL,
    'Morel'
);

INSERT INTO survivor VALUES (
    4,
    'Jake',
    NULL,
    'Park'
);

INSERT INTO survivor VALUES (
    5,
    'Nea',
    NULL,
    'Karlsson'
);

INSERT INTO killer VALUES (
    1,
    'The Trapper'
);

INSERT INTO killer VALUES (
    2,
    'The Wraith'
);

INSERT INTO killer VALUES (
    3,
    'The Hillbilly'
);

INSERT INTO killer VALUES (
    4,
    'The Nurse'
);

INSERT INTO perk VALUES (
    1,
    'Bond',
    'Survivors are revealed to you when they are within a range of 20/28/36 metres.',
    1,
    NULL
);

INSERT INTO chapter VALUES (
    1,
    'The Last Breathe',
    1.99,
    5,
    4
);