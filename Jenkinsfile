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
        stage('nexus'){
            steps{
                script{
        nexusArtifactUploader artifacts: [[artifactId: 'springboot', classifier: '', file: '/var/jenkins_home/workspace/s1/target/uber.jar'
, type: 'jar']], credentialsId: 'nexus', groupId: 'com.example', nexusUrl: '34.125.9.240:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'repo1', version: '1.0.0'
    }
            }
    
   
}
    }
}
        
