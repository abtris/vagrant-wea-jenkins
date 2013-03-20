wget http://localhost:8080/jnlpJars/jenkins-cli.jar

java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin \
checkstyle cloverphp dry htmlpublisher jdepend plot pmd violations xunit

java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin \
git greenballs jobConfigHistory build-pipeline-plugin join disk-usage configurationslicing promoted-builds email-ext

java -jar jenkins-cli.jar -s http://localhost:8080 safe-restart
