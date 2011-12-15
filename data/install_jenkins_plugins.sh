wget -q -O - http://pkg.jenkins-ci.org/debian-stable/jenkins-ci.org.key | sudo apt-key add -
echo 'deb http://pkg.jenkins-ci.org/debian-stable binary/' >jenkins
sudo cp jenkins /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install jenkins

wget http://localhost:8080/jnlpJars/jenkins-cli.jar

java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin checkstyle
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin cloverphp
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin dry
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin htmlpublisher
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin jdepend
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin plot
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin pmd
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin violations
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin xunit

java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin git
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin greenballs
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin jobConfigHistory
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin build-pipeline-plugin
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin join
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin disk-usage
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin configurationslicing

java -jar jenkins-cli.jar -s http://localhost:8080 safe-restart