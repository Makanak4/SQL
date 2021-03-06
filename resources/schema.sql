CREATE TABLE Flats (
    id    INTEGER PRIMARY KEY AUTOINCREMENT,
    name  TEXT NOT NULL,
    price INTEGER NOT NULL CHECK ( price > 0 ),
    countRoom INTEGER NOT NULL CHECK ( countRoom > 0 ),
    station_id INTEGER REFERENCES Stations (id),
    owner_id INTEGER REFERENCES Owners (id)
);

CREATE TABLE Owners (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE Stations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

