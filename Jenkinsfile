pipeline {
    agent any

    environment {
        DEPLOY_USER = 'root'
        DEPLOY_HOST = '93.127.214.57'
        DEPLOY_PATH = '/var/www/emergency-app'
        SSH_KEY = credentials('vps-ssh-key')  // You must add this credential in Jenkins
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Favourez/Emergency-App.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Static site — No build step required'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying to VPS...'
                sh '''
                mkdir -p ~/.ssh
                echo "$SSH_KEY" > ~/.ssh/id_rsa
                chmod 600 ~/.ssh/id_rsa
                ssh -o StrictHostKeyChecking=no $DEPLOY_USER@$DEPLOY_HOST "mkdir -p $DEPLOY_PATH"
                scp -r * $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH/
                '''
            }
        }
    }
}
