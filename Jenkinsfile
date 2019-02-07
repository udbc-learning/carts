pipeline {
    agent any

    tools {
        maven 'Maven 3.6.0'
    }
    stages {
        stage('Build') {
            steps {
              echo 'Building.....'

                sh 'mvn clean compile'
            }
        }
        stage('Test'){
            steps {

                echo 'Testing....'
                sh 'mvn test'
            }
        }
        stage('Package') {
            steps {
                sh 'mvn -DskipTests package'
            }
        }
    }
}
