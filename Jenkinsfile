/* import shared library */
@Library('shared-library')_
pipeline {
     environment {
       IMAGE_NAME = "ferme-app"
       IMAGE_TAG = "v4"
       STAGING = "mayaferme-staging"
       PRODUCTION = "mayaferme-production"
     }
     agent none
     stages {
          
         stage('Build image') {
             agent any
             steps {
                script {
                  sh '''
                  git clone https://github.com/sahibmartial/deploysuccess.git/
                  docker cp /home/lenovo-sahib/projects/deployferme/.env: /deploysuccess
                  cd deploysuccess
                  docker-compose build 
                  '''
                }
             }
        }

        stage('Run container based on builded image') {
            agent any
            steps {
               script {
                 sh '''
                    kool run setup
                    sleep 5
                 '''
               }
            }
       }
       stage('Test image') {
           agent any
           steps {
              script {
                sh '''
                    curl http://localhost:8089 | grep -q "Ferme MAYA"
                '''
              }
           }
      }
      stage('Clean Container') {
          agent any
          steps {
             script {
               sh '''
                 docker stop $IMAGE_NAME
                 docker rm $IMAGE_NAME
               '''
             }
          }
     }
     stage('Push image in staging and deploy it') {
       when {
              expression { GIT_BRANCH == 'origin/master' }
            }
      agent any
      environment {
          HEROKU_API_KEY = credentials('heroku_api')
      }  
      steps {
          script {
            sh '''
              heroku container:login
              heroku create $STAGING || echo "project already exist"
              heroku container:push -a $STAGING web
              heroku container:release -a $STAGING web
            '''
          }
        }
     }
     stage('Push image in production and deploy it') {
       when {
              expression { GIT_BRANCH == 'origin/master' }
            }
      agent any
      environment {
          HEROKU_API_KEY = credentials('heroku_api')
      }  
      steps {
          script {
            sh '''
              heroku container:login
              heroku create $PRODUCTION || echo "project already exist"
              heroku container:push -a $PRODUCTION web
              heroku container:release -a $PRODUCTION web
            '''
          }
        }
     }
  }
     post {
          always {
               script {
                    slackNotifier currentBuild.result
               }
          }
     }
}