def dockerImage;

node('docker'){
    stage('SCM'){
        checkout([$class:'GitSCM', branches: [[name:'*/master']], doGenerateSubmoduleConfigurations: false, extensions: [],
        submoduleCfg: [], userRemoteConfigs:[['https://github.com/RanMarkovich/hello_jenkins_docker.git']]])
    }
    stage('build'){
		dockerImage = docker.build('ranmarkovich/agent-dnc:v$BUILD_NUMBER', './pythoncore');
	}
}