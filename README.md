
# Age Calculator App

This is a simple .NET Console Application that calculates the year of birth based on user input.

## 🚀 Features
✔ Takes user's name and age 
✔ Calculates birth year using the current date  
✔ Error handling for invalid inputs  
✔ Dockerized for easy deployment  
✔ Stored on Docker Hub for cloud accessibility 

### 📌 Steps to run without Docker using .NET CLI
1️⃣ Clone the repository
➜ git clone https://github.com/elishaa31/AgeCalculatorApp.git
➜ cd AgeCalculatorApp

2️⃣ Build the project
➜ dotnet build

3️⃣ Run the application
➜ dotnet run

### 📌 Run with Docker (Containerized App)
1️⃣ Clone the repository
➜ git clone https://github.com/elishaa31/AgeCalculatorApp.git
➜ cd AgeCalculatorApp

2️⃣ Build the Docker image
➜ docker build -t agecalculatorapp .

3️⃣ Run the Docker container
➜ docker run --rm -it agecalculatorapp

### 📌 Pull and Run from Docker Hub
1️⃣ Pull the Docker image from Docker Hub
➜ docker pull elishaelanjikal/agecalculatorapp:v1

2️⃣ Run the container
➜ docker run --rm -it elishaelanjikal/agecalculatorapp:v1


