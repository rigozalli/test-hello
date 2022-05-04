pipeline {
    agent any

     container('maven') {
            sh 'mvn -B -ntp -Dmaven.test.failure.ignore verify'
        }
        junit '**/target/surefire-reports/TEST-*.xml'
        archiveArtifacts '**/target/*.jar'
}
