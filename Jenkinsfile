pipeline 
{
    agent any
    
    	stages 
	{
    		
    		stage('Clone sources') 
    		{	
    			steps
    				{
    					git url: 'https://github.com/jfrogdev/project-examples.git', branch: 'master'
    				}
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