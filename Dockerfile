FROM selenium/standalone-chrome:latest
COPY . ./home/seluser/test-hello
RUN sudo apt update
RUN sudo apt install -y maven
RUN sudo chown -R seluser /home/seluser/itest-hello
WORKDIR /home/seluser/test-hello
CMD "mvn compile exec:java -Dexec.mainClass=“hello”"
