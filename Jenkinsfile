pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'khanealam007/hello-world-k8s'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/khan-e-alam-007/hello-world-k8s'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }
        stage('Push to DockerHub') {
            steps {
                withDockerRegistry([credentialsId: 'khanealam007', url: '']) {
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

