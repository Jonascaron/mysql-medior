CREATE TABLE Deelnemers (
    DeelnemerID INT PRIMARY KEY,
    Naam VARCHAR(100),
    Email VARCHAR(100)
);  

CREATE TABLE Evenementen (
    EvenementID INT PRIMARY KEY,
    EvenementNaam VARCHAR(100),
    StartDatum DATE,
    EindDatum DATE
);

CREATE TABLE Sessies (
    SessieID INT PRIMARY KEY,
    EvenementID INT,
    SessieNaam VARCHAR(100),
    SessieDatum DATE,
    FOREIGN KEY (EvenementID) REFERENCES Evenementen(EvenementID)
);

CREATE TABLE DeelnemerSessie (
    DeelnemerID INT,
    SessieID INT,
    FOREIGN KEY (DeelnemerID) REFERENCES Deelnemers(DeelnemerID),
    FOREIGN KEY (SessieID) REFERENCES Sessies(SessieID)
);


INSERT INTO Deelnemers (DeelnemerID, Naam, Email) VALUES
(1, 'Sara Smits', 'sara.smits@email.com'),
(2, 'Bram de Groot', 'bram.degroot@email.com'),
(3, 'Lotte Bakker', 'lotte.bakker@email.com');

INSERT INTO Evenementen (EvenementID, EvenementNaam, StartDatum, EindDatum) VALUES
(101, 'Tech Conferentie 2023', '2023-03-15', '2023-03-17'),
(102, 'Digitale Marketing Summit', '2023-04-20', '2023-04-22');

INSERT INTO Sessies (SessieID, EvenementID, SessieNaam, SessieDatum) VALUES
(1001, 101, 'Introductie tot AI', '2023-03-15'),
(1002, 101, 'Blockchain Basics', '2023-03-16'),
(1003, 102, 'SEO Strategieën', '2023-04-20'),
(1004, 102, 'Social Media Marketing', '2023-04-21');

INSERT INTO DeelnemerSessie (DeelnemerID, SessieID) VALUES
(1, 1001),
(1, 1003),
(2, 1002),
(2, 1004),
(3, 1001),
(3, 1002),
(3, 1003);
