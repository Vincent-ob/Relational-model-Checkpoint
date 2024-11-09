-- Table for hotels
CREATE TABLE Hotel (
    Hotel_Id INT PRIMARY KEY,
    Hotel_Name VARCHAR(255),
    Address VARCHAR(255),
    Phone_Number VARCHAR(50)
);

-- Table for types
CREATE TABLE Type (
    Type_Id INT PRIMARY KEY,
    Type_Name VARCHAR(255)
);

-- Table for rooms
CREATE TABLE Room (
    Room_Id INT PRIMARY KEY,
    Floor INT,
    Hotel_Id INT,
    Type_Id INT,
    FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id),
    FOREIGN KEY (Type_Id) REFERENCES Type(Type_Id)
);

-- Table for categories
CREATE TABLE Category (
    Category_Id INT PRIMARY KEY,
    Category_Name VARCHAR(255),
    Price DECIMAL(10, 2),
    Beds_numbers INT
);

-- Table for employees
CREATE TABLE Employee (
    Employee_Id INT PRIMARY KEY,
    Employee_Name VARCHAR(255),
    Employee_Specialty VARCHAR(255),
    Hotel_Id INT,
    FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id)
);

-- Table for room categories (optional if a room has a category)
CREATE TABLE Room_Category (
    Room_Id INT,
    Category_Id INT,
    PRIMARY KEY (Room_Id, Category_Id),
    FOREIGN KEY (Room_Id) REFERENCES Room(Room_Id),
    FOREIGN KEY (Category_Id) REFERENCES Category(Category_Id)
);