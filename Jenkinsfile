pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-username/loope-app.git'
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
                scp -r * root@93.127.214.57:/var/www/emergency-app/
                '''
            }
        }
    }
}
