node('PYTHONCORE'){
    stage('SCM'){
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false,
         extensions: [], submoduleCfg: [],
         userRemoteConfigs: [[url: 'https://github.com/RanMarkovich/hello_jenkins_docker.git']]])
    }
    stage('Build'){
        sh 'python3 hello_jenkins_docker.py'
    }
    stage('Test'){
        echo 'Execute unit tests'
    }
    stage('Package'){
        echo 'Zip it up'
    }
    stage('Deploy'){
        echo 'Push to deployment'
    }
}