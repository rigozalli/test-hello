FROM selenium/standalone-chrome:latest
COPY . ./home/seluser/infopay-testing
RUN sudo apt update
RUN sudo apt install -y maven
RUN sudo chown -R seluser /home/seluser/infopay-testing
WORKDIR /home/seluser/infopay-testing
CMD "mvn compile exec:java -Dexec.mainClass=“hello”"
