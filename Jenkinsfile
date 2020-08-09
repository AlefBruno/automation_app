pipeline {
  agent {
    docker {
      image 'budtmo/docker-android-x86-10.0'
      args '--privileged -d -p 6080:6080 -p 5554:5554 -p 5555:5555 -e DEVICE="Samsung Galaxy S10"'
    }
  }
  stages {
    stage('Instalar dependências') {
      steps {
        echo 'Instalando .....'
        sh 'rm -f Gemfile.lock'
        sh 'bundle install'
      }
    }
    stage('Testes') {
      steps {
        echo 'Executando os Teste .....'
        sh 'bundle exec cucumber -p ci'
      }
      post {
        always{
          echo 'Inserindo relatório de testes .....'
          cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'reports', pendingStepsNumber: -1, reportTitle: '*** Automação WEB ***', skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
        }
      }
    }
  }
}