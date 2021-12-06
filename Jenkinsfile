pipeline
{
agent any
environment
  {
    PATH='/sbin:/bin:/usr/sbin:/usr/bin:~/.local/bin/'
  }
  stages
  {    
    stage('Create or Update whatever file commit')
    {
      steps
      {
        script 
        {
            try 
            {
               sh """#!/bin/bash
            GIT_COMMIT_ID=`git rev-parse HEAD`
            echo "The value is \$GIT_COMMIT_ID"
            FILE_NAME=`git diff-tree --no-commit-id --name-only -r \$GIT_COMMIT_ID`
            echo "\$FILE_NAME"
            sh \$FILE_NAME \$FILE_NAME
            """
              
            } 
            catch (Exception e) 
            {
                echo 'Exception occurred: ' + e.toString()
                  sh """#!/bin/bash
            GIT_COMMIT_ID=`git rev-parse HEAD`
            echo "The value is \$GIT_COMMIT_ID"
            FILE_NAME=`git diff-tree --no-commit-id --name-only -r \$GIT_COMMIT_ID`
            echo "\$FILE_NAME"
            sh \$FILE_NAME \$FILE_NAME
            """
            }
        }
        
      }
    }
  }
}
