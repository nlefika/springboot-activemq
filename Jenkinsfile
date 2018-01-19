pipeline {
    agent any
    stages {
        stage ('Build'){
            steps {
               sh './gradlew clean build'
            }
        }

        stage ('Test'){
            steps {
                sh './gradlew test'
            }
        }
        stage ('OpenshiftBuild'){
            steps {
                script {
                   openshiftBuild(buildConfig: '${NAME}', showBuildLogs: 'true')
                }
            }
        }
        stage ('OpenshiftDeploy'){
            steps {
                script{
                    openshiftDeploy(deploymentConfig: '${NAME}')
                }
            }
        }
    }
}