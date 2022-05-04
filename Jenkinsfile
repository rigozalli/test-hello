pipeline {
    agent readTrusted('jenkins-pod.yaml')
    stages {
        stage('build') {
            steps {
                sh 'mvn compile exec:java -Dexec.mainClass=“hello”'
            }
        }
    }
}
