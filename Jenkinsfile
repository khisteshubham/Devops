pipeline {
    agent 
     {
         node
         {
             label 'built-in'
             customWorkspace "/mnt/project/"
         }
     }
     

    stages {
        stage('Dockerinstall') {
            steps {
                sh "yum install docker -y"
                sh "service docker start"
            }
        }
        
        stage('install httpd container') {
            steps {
                sh "docker run -itdp 90:80 httpd"
            }
        }
        
         
        
        stage('Build Dockerfile') {
            steps {
                dir ("/media/")
                {
                
                sh 'docker build -t shubham .'
                sh 'docker run -itdp 70:8080 shubham'  
                    
                }
                              
             
            }
        }
        
    }

}

