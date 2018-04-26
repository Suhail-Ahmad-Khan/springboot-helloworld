pipeline 
{
    agent any
    
    	stages 
	{
    		
    		stage('Clone sources') 
    		{	
    			step
    				{
    					git url: 'https://github.com/jfrogdev/project-examples.git', branch: 'master'
    				}
    		}
        
        	stage ('Compile Stage') 
        	{
            	step 
            		{
                		withMaven(maven : 'Maven') 
                		{
                    		sh 'mvn clean compile'
						}
            		}
        	}
	}
}