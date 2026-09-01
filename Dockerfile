FROM eclipse-temurin:17-jdk-alpine

# This sets your current folder inside the container to /app
WORKDIR /app

# FIX: Copy from your host's src/ folder directly into the current directory (.)
COPY src/Main.java .

# Now javac will look in /app and find Main.java perfectly
RUN javac Main.java

CMD ["java", "Main"]
