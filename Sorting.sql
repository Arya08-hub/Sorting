
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area INT
);



INSERT INTO Country (Id, Country_name, Population, Area)
VALUES
(1, 'USA', 331000000, 9833520),
(2, 'Canada', 38000000, 9984670),
(3, 'India', 1380000000, 3287263),
(4, 'China', 1440000000, 9596961),
(5, 'Brazil', 213000000, 8515767),
(6, 'Australia', 25600000, 7692024),
(7, 'Russia', 146000000, 17098246),
(8, 'UK', 67000000, 243610),
(9, 'France', 65000000, 551695),
(10, 'Germany', 83000000, 357022);


CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(100),
    Lname VARCHAR(100),
    Population INT,
    Rating DECIMAL(3, 2),
    Country_Id INT,
    Country_name VARCHAR(100)
);



INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES
(1, 'John', 'David' 30000, 4.5, 1, 'USA'),
(2, 'Jane', 'Sam', 40000, 4.7, 2, 'Canada'),
(3, 'Amit', 'Kumar', 50000, 4.3, 3, 'India'),
(4, 'Thomas', 'George', 60000, 4.8, 4, 'China'),
(5, 'Aneesh', 'Kumar', 20000, 4.2, 5, 'Brazil'),
(6, 'Emily', 'John', 15000, 4.9, 6, 'Australia'),
(7, 'Ivan', 'Ansil', 70000, 4.4, 7, 'Russia'),
(8, 'George', 'M', 25000, 4.6, 8, 'UK'),
(9, 'Marie', ' lal', 35000, 4.3, 9, 'France'),
(10, 'Kalidas', 'jay', 45000, 4.1, 10, 'Germany');

SELECT LEFT(Country_name, 3) AS FirstThreeChars FROM Country;
   

SELECT CONCAT(Fname, ' ', Lname) AS FullName FROM Persons;
   
SELECT COUNT(DISTINCT Country_name) AS UniqueCountries FROM Persons;
   
SELECT MAX(Population) AS MaxPopulation FROM Country;
   

SELECT MIN(Population) AS MinPopulation FROM Persons;
   

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
   VALUES 
   (11, 'Alice', NULL, 30000, 4.5, 1, 'USA'),
   (12, 'Bob', NULL, 25000, 3.9, 2, 'Canada');
   

  
   SELECT COUNT(Lname) AS CountOfLname FROM Persons;
   


   SELECT COUNT(*) AS TotalRows FROM Persons;
   


   SELECT Population FROM Country LIMIT 3;
   


   SELECT * FROM Country ORDER BY RAND() LIMIT 3;
   


    SELECT * FROM Persons ORDER BY Rating DESC;
    


    SELECT Country_name, SUM(Population) AS TotalPopulation 
    FROM Persons 
    GROUP BY Country_name;
    


    SELECT Country_name 
    FROM Persons 
    GROUP BY Country_name 
    HAVING SUM(Population) > 50000;
    

    SELECT Country_name, COUNT(*) AS TotalPersons, AVG(Rating) AS AvgRating 
    FROM Persons 
    GROUP BY Country_name 
    HAVING COUNT(*) > 2 
    ORDER BY AvgRating ASC;