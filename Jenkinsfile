pipeline 
{
    agent any
    
    	stages 
	{
    		
    		stage('Clone sources') 
    		{
        		git url: 'https://github.com/jfrogdev/project-examples.git', branch: 'master'
        		echo "Cloned the project from Github"
    		}
        
        	stage ('Compile Stage') 
        	{
            	steps 
            		{
                		withMaven(maven : 'Maven') 
                		{
                    		sh 'mvn clean compile'
						}
            		}
        	}
	}
}