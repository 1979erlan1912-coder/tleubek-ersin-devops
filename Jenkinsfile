pipeline {
    agent any
    environment {
        STUDENT_NAME = 'Ersin'
        STUDENT_SURNAME = 'Tleubek'
        STUDENT_GROUP = 'IT2-2308'
        STUDENT_ID = '37588'
    }
    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo "Building student app for ${STUDENT_NAME} ${STUDENT_SURNAME}..."
                bat 'echo Building application...'
            }
        }
        stage('Test') {
            steps {
                echo 'Executing tests...'
                bat 'echo Running test checks...'
            }
        }
        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t tleubek-ersin-devops .'
            }
        }
        stage('Docker Run') {
            steps {
                echo 'Running Docker container...'
                bat '''
                docker rm -f tleubek-ersin-container || exit 0
                docker run --name tleubek-ersin-container -e STUDENT_NAME=%STUDENT_NAME% -e STUDENT_SURNAME=%STUDENT_SURNAME% -e STUDENT_GROUP=%STUDENT_GROUP% -e STUDENT_ID=%STUDENT_ID% tleubek-ersin-devops
                '''
            }
        }
    }
    post {
        always {
            echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
            echo "Group: ${STUDENT_GROUP}"
            echo "Student ID: ${STUDENT_ID}"
        }
    }
}
