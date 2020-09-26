
CREATE TABLE Theatres
    (TheatreID INTEGER NOT NULL AUTO_INCREMENT,
     Name VARCHAR(40),
     Location VARCHAR(40),
     PRIMARY KEY (TheatreID));

CREATE TABLE Screens
    (ScreenID INTEGER NOT NULL AUTO_INCREMENT,
     Theatre INTEGER NOT NULL,
     ScreenNumber INTEGER,
     PRIMARY KEY (ScreenID),
     FOREIGN KEY (Theatre) REFERENCES Theatres(TheatreID) ON DELETE RESTRICT);

CREATE TABLE Showtimes
    (Film INTEGER NOT NULL,
     Screen INTEGER NOT NULL,
     ShowTime DATETIME,
     PRIMARY KEY (Film, Screen, ShowTime),
     FOREIGN KEY (Film) REFERENCES Films(FilmID) ON DELETE RESTRICT,
     FOREIGN KEY (Screen) REFERENCES Screens(ScreenID) ON DELETE RESTRICT);
