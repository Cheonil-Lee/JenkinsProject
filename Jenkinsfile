pipeline {
    agent any

    environment {
        REGISTRY = "202.31.246.181:9000"    // 너의 MinIO Docker Registry 주소
        IMAGE_NAME = "clearml-deploy"       // 빌드할 이미지 이름
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Cheonil-Lee/JenkinsProject.git'
            }
        }
        stage('Docker Build') {
            steps {
                sh '''
                echo "Building Docker image..."
                docker build -t $REGISTRY/$IMAGE_NAME:latest .
                '''
            }
        }
        stage('Docker Push') {
            steps {
                sh '''
                echo "Pushing Docker image to Registry..."
                docker push $REGISTRY/$IMAGE_NAME:latest
                '''
            }
        }
    }
}
