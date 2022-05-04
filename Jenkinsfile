pipeline {
    agent {kubernetes {readTrusted('jenkins-pod.yaml')}}
    stages {
        stage('build') {
            steps {
                sh 'mvn compile exec:java -Dexec.mainClass=“hello”'
            }
        }
    }
}
