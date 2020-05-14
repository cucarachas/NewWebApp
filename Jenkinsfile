pipeline{
	agent any

	stages{
		stage("Git checkout"){
			steps{
				echo "Init message"
			}
		}
		stage("Build"){
			steps{
				echo "Build succesful"
				sh "mvn clean package"
			}
		}

	}
}
