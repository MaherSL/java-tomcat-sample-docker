pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                 cmd_exec('mvn -f java-tomcat-sample-docker/pom.xml clean package')
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Create Tomcat Docker Image'){
            steps {
                bat 'docker build . -t tomcatsamplewebapp:${env.BUILD_ID}'
            }
        }

    }
}
def cmd_exec(command) {
        return bat(returnStdout: true, script: "${command}").trim()
    }