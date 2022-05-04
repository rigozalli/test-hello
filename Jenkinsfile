podTemplate(containers: [
    containerTemplate(name: 'maven', image: 'maven:3.8.1-jdk-8', command: 'sleep', args: '99d')
  ]) {

    node(POD_LABEL) {
        stage('Get a Maven project') {
            container('maven') {
                stage('Build a Maven project') {
                    sh 'git init .'
                    sh 'git remote add origin https://github.com/rigozalli/test-hello.git'
                    sh 'git pull origin master'
                    sh 'mvn compile exec:java -Dexec.mainClass=“hello”'
                }
            }
        }
    }
}