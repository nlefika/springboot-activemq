pipeline {
    agent any
    stages {
        stage ('Build'){
            steps {
                script {
                    openshiftBuild(buildConfig: 'springboot-activemq', showBuildLogs: 'true')
                }
            }
        }
        stage ('Deploy'){
            steps {
                script {
                       openshiftDeploy(deploymentConfig: 'springboot-activemq')
                }
            }
        }
    }
}