pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                 bat 'mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        stage('Deploy in staging Environment'){
            steps{
                build job : 'Deploy_Application_Staging_ENV'
            }
        }

        /*stage('Create Tomcat Docker Image'){
            steps {
                bat 'docker build . -t tomcatsamplewebapp'
            }
        }*/

    }
}
def cmd_exec(command) {
        return bat(returnStdout: true, script: "${command}").trim()
    }