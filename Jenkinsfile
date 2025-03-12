pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'your-dockerhub-username/hello-world-k8s'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/hello-world-k8s.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }
        stage('Push to DockerHub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh 'docker push $DOCKER_IMAGE'
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
            }
        }
    }
}

