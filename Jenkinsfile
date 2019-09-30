pipeline {

  agent any
  tools {nodejs "node"}

  stages {
    stage('pre-build') {
      steps {
        git 'https://github.com/anasabdallah/docker-react'
      }
    }
    stage('build') {
      steps {
        sh 'npm install'  
      }
    }
    stage('test') {
      steps {
        sh 'npm run test -- --coverage'  
      }
    }
    stage('clean') { 
      steps {
        cleanWs()
      }
    }
  }
}