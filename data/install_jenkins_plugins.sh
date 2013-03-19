wget -q -O - http://pkg.jenkins-ci.org/debian-stable/jenkins-ci.org.key | sudo apt-key add -
echo 'deb http://pkg.jenkins-ci.org/debian-stable binary/' >jenkins
sudo cp jenkins /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install jenkins

wget http://localhost:8080/jnlpJars/jenkins-cli.jar

java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin \
checkstyle cloverphp dry htmlpublisher jdepend plot pmd violations xunit

java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin \
git greenballs jobConfigHistory build-pipeline-plugin join disk-usage configurationslicing promoted-builds email-ext

java -jar jenkins-cli.jar -s http://localhost:8080 safe-restart
