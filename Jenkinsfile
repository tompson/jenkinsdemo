pipeline {
	agent { docker 'openjdk:8' }

	stages {
		stage('Test') {
			steps {
				sh './gradlew clean test || true'
			}
			post {
				always {
					junit allowEmptyResults: true, testResults: '**/build/test-results/test/*.xml'
				}
			}
		}
		stage('Assemble') {
			steps {
				sh './gradlew assemble'
			}
		}
	}
}