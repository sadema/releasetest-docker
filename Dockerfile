FROM sadema/payara-micro
ARG POM_VERSION=1.2-SNAPSHOT
ENV ARCHIVE_NAME releasetest-${POM_VERSION}.war
ADD http://192.168.50.10:8081/artifactory/rabo-test-repo/nl/kristalsoftware/tests/releasetest/${POM_VERSION}/${ARCHIVE_NAME} ${DEPLOYMENT_DIR}
ENTRYPOINT java -jar ${PAYARA_ARCHIVE}.jar --deploy ${ARCHIVE_NAME}
