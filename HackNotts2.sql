CREATE TABLE Player(
Player_ID VARCHAR(10),
Player_Name VARCHAR (40),
Company_Name VARCHAR(30),
Company_Bio VARCHAR (500),
Email VARCHAR(40),
Phone VARCHAR(11),
Money_Won INTEGER,
Age INTEGER,
PRIMARY KEY (Player_ID));

CREATE TABLE Sponsors(
Sponsor_ID VARCHAR(10),
Sponsor_Company_Name VARCHAR(40),
Sponsor_Rep_Name VARCHAR(40),
Sponsor_Rep_Email VARCHAR(50),
Sponsor_Rep_Phone VARCHAR(11),
PRIMARY KEY (Sponsor_ID));

CREATE TABLE Games(
Game_ID VARCHAR(10),
Investment_Amount INTEGER,
Sponsor_ID VARCHAR(10),
Game_Date DATE,
Prize_Money INTEGER,
PRIMARY KEY (Game_ID),
FOREIGN KEY (Sponsor_ID) REFERENCES Sponsors(Sponsor_ID) ON DELETE NO ACTION);

CREATE TABLE Groups(
Group_ID VARCHAR(10),
No_of_Participants INTEGER,
Round INTEGER,
Game_ID VARCHAR (10),
PRIMARY KEY (Group_ID),
FOREIGN KEY (Game_ID) REFERENCES Games(Game_ID) ON DELETE NO ACTION);

CREATE TABLE Winners(
Rank INTEGER,
Player_ID VARCHAR(10),
Group_ID VARCHAR(10),
PRIMARY KEY (Rank, Player_ID, Group_ID),
FOREIGN KEY (Player_ID) REFERENCES Player(Player_ID) ON DELETE NO ACTION,
FOREIGN KEY (Group_ID) REFERENCES Groups(Group_ID) ON DELETE NO ACTION);

