-- Create the database
CREATE DATABASE GeoData;

-- Use the database
USE GeoData;

-- Create the Provinces table
CREATE TABLE Provinces (
    ProvinceID INT PRIMARY KEY AUTO_INCREMENT,
    ProvinceName VARCHAR(255) NOT NULL
);

-- Create the Districts table
CREATE TABLE Districts (
    DistrictID INT PRIMARY KEY AUTO_INCREMENT,
    DistrictName VARCHAR(255) NOT NULL,
    ProvinceID INT,
    FOREIGN KEY (ProvinceID) REFERENCES Provinces(ProvinceID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Create the Cities table
CREATE TABLE Cities (
    CityID INT PRIMARY KEY AUTO_INCREMENT,
    CityName VARCHAR(255) NOT NULL,
    DistrictID INT,
    FOREIGN KEY (DistrictID) REFERENCES Districts(DistrictID) ON DELETE CASCADE ON UPDATE CASCADE
);
