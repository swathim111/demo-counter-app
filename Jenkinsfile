pipeline{
    
    agent any 
    
    stages {
        
        stage('Git Checkout'){
            
            steps{
                
                script{
                    
                   git branch: 'main', credentialsId: 'github', url: 'https://github.com/swathim111/demo-counter-app.git'
                }
            }
        } 
        stage('unit test'){
            steps{
                script{
                    sh 'mvn test'
                }
            }
        }
        stage('integration'){
            steps{
                script{
                    sh 'mvn verify -DskipunitTest'
                }
            }
        }
       stage('build'){
            steps{
                script{
                    sh 'mvn clean install'    
    }
            }
       }
        stage('sonar'){
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'sonar') {
                    
                    sh 'mvn clean package sonar:sonar'   
    }
                }
            }
        }
      
       stage('image build'){
            steps{
                script{
                    sh 'docker build -t image1 .'
                }
            }
        }
    }
}
        
