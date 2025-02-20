
# Age Calculator App

This is a simple .NET Console Application that calculates the year of birth based on user input.

## Features
Takes user's name and age 
Calculates birth year using the current date  
Error handling for invalid inputs  
Dockerized for easy deployment  
Stored on Docker Hub for cloud accessibility 

### Steps to run without Docker using .NET CLI
1) Clone the repository
git clone https://github.com/elishaa31/AgeCalculatorApp.git
cd AgeCalculatorApp

2) Build the project
dotnet build

3) Run the application
dotnet run

#### Run with Docker (Containerized App)
1️ Clone the repository
git clone https://github.com/elishaa31/AgeCalculatorApp.git
cd AgeCalculatorApp

2️ Build the Docker image
docker build -t agecalculatorapp .

3 Run the Docker container
docker run --rm -it agecalculatorapp

##### Pull and Run from Docker Hub
1️ Pull the Docker image from Docker Hub
docker pull elishaelanjikal/agecalculatorapp:v1

2️ Run the container
docker run --rm -it elishaelanjikal/agecalculatorapp:v1


