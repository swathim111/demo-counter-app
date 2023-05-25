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
                    sh 'mvn clean install'
                }
            }
        
    }
   
}
        
