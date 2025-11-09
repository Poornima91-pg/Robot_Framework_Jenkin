pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Poornima91-pg/Robot_Framework_Jenkin.git'
            }
        }
        stage('Install Requirements') {
            steps {
                bat '"C:\\Users\\ADMIN\\AppData\\Local\\Programs\\Python\\Python314\\python.exe" -m pip install -r requirements.txt'
            }
        }
        stage('Run Tests') {
            steps {
                bat '"C:\\Users\\ADMIN\\AppData\\Local\\Programs\\Python\\Python314\\python.exe" -m robot TestCodes'
            }
        }
    }
}
