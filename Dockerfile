FROM microsoft/aspnetcore:1
LABEL Name=corewebapp Version=0.0.1
ARG source=./obj/Docker/publish/
WORKDIR /app 
COPY $source .
ENTRYPOINT dotnet corewebapp.dll