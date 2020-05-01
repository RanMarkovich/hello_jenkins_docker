def dockerImage;

node('docker'){
	stage('SCM'){
		checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/RanMarkovich/hello_jenkins_docker.git']]]);
	}
	stage('build'){
		dockerImage = docker.build('ranmarkovich/agent-pc:v$BUILD_NUMBER', './pythoncore');
	}
	stage('push'){
	docker.withRegistry('https://index.docker.io/v1/'){
	        sh 'docker login'
            dockerImage.push();
        }
	}
}