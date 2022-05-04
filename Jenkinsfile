pipeline {
    agent any

    stages{
        stage('Build'){
            steps{ 
                git 'https://github.com/rigozalli/test-hello.git'
                sh 'sudo apt install -y maven'
                sh 'mvn compile exec:java -Dexec.mainClass=“hello”'
            }
        }
    }
}