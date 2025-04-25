FROM openjdk:8-jre

# Install necessary packages
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Download JDownloader
RUN wget http://installer.jdownloader.org/JDownloader.jar -O /opt/JDownloader.jar

# Set the working directory
WORKDIR /opt

# Command to run JDownloader
CMD ["java", "-jar", "JDownloader.jar"]
