pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    echo 'Building the Docker image...'
                    sh 'docker build -t my-web-app:latest .'
                }
            }
            stage('Run Docker Container') {
                steps {
                    script {
                        echo 'Running the Docker container...'
                        sh 'docker rm -f my-web-app || true'
                        sh 'docker run -d --name my-web-app -p 8081:80 my-web-app:latest'
                    }
                }
            }
        }
    }
}
