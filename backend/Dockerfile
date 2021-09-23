# BUILD SATGE
# build from the Maven image which has a maven environment configured already
FROM maven:latest AS buildstage

# copy our application
COPY . /build
# can use COPY . . and delete line 10 if building directly to the container

# change the working directory to where we are building the application
WORKDIR /build

# use maven to build the application
RUN mvn clean package --no-transfer-progress

# RUNTIME STAGE
# create a new build stage from the Java image which has java installed already
FROM openjdk:11 AS runtime

# change the working directory to where the application is going to be installed
WORKDIR /opt/garage

# copy the JAR file that was created in the previous build stage to the application folder in this build stage
COPY --from=buildstage /build/target/Garage-0.0.1.jar car.jar

# Expose the 9002 port
EXPOSE 9002

# create an entrypoint to run the application
ENTRYPOINT ["java", "-jar", "car.jar"]

# can delete from line 19 and use ENTRYPOINT ["java", "-jar", "build/target/Garage-0.0.1.jar"]
