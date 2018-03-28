node {
	stage 'Checkout'
	checkout scm

	stage 'Build'
	sh "docker build -t myapp"

	stage 'Export'
	sh "docker save myapp >myapp.img"

	stage 'Release'
	archiveArtifacts artifacts: '*.img', fingerprint: true

}