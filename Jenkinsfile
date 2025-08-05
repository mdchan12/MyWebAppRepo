pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    echo 'Building the Docker image...'
                    // Build the Docker image from the Dockerfile
                    sh 'sudo docker build -t my-web-app:latest .'
                }
            }
            stage('Run Docker Container') {
                steps {
                    script {
                        echo 'Running the Docker container...'
                        // Stop and remove any old container to avoid conflicts
                        sh 'sudo docker rm -f my-web-app || true'
                        // Run the new container, exposing it on a different port
                        sh 'sudo docker run -d --name my-web-app -p 8081:80 my-web-app:latest'
                    }
                }
            }
        }
    }
}
