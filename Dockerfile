FROM mcr.microsoft.com/dotnet/runtime:8.0 AS base
WORKDIR /app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["AgeCalculatorApp.csproj", "./"]
RUN dotnet restore "AgeCalculatorApp.csproj"
COPY . .
RUN dotnet publish -c Release -o /app/publish
FROM base AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "AgeCalculatorApp.dll"]






# STEP 1: Set Base Runtime Image
# This is a lightweight .NET runtime image, used only for running the app.
# It does NOT include the full SDK (compiler, build tools).
#L1: FROM mcr.microsoft.com/dotnet/runtime:8.0 AS base
#L2: # Sets the working directory inside the container to `/app` (WORKDIR /app)

#STEP 2: Set Up Build Environment
# Use the .NET SDK image (includes compiler & build tools) to build the app.
# This is necessary because the runtime image cannot compile the app.
#L3: FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
#L4: Sets the working directory inside the container for the build stage (WORKDIR /src)

#L5: Copy ONLY the project file (.csproj) to the container first.
#This helps Docker reuse downloaded packages if nothing in the project file has changed.
#L6: Download and install all required libraries (NuGet packages) listed in the project file.
#L7: Copy ALL other source code files from your computer to the container.
#L8: Build/compiles the app in Release mode and save the output files in `/app/publish`.

#STEP 3: Create final runtime image
#This section is for the final version of the app that will actually run. The previous steps were for building the app, and now we are setting up a lighter version to just run it.
#L9: Uses the base image from Step 1 (which only contains the .NET runtime). This keeps the final image small because we don’t need the full SDK anymore.
#The SDK is only needed for development and building the app. Once the app is compiled into a .dll file, we only need the .NET Runtime to run it
#L10: Sets /app as the working folder inside the container. All commands will now run inside this folder.
#L11: Copies the built (compiled) app from the previous step (build stage). The app files are already ready to run, so we just move them into this runtime image.
#L12: Defines the command that runs when the container starts. This tells Docker to start the app by running
#A .dll (Dynamic Link Library) file is a compiled file that contains ready-to-run code for a program.

#Final Takeaway for dll file type
# .dll files store compiled code that can be executed by the .NET runtime.
#You don’t run .cs files directly—they are converted into .dll first.

