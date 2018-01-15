FROM sadema/payara-micro
ARG POM_VERSION
ENV ARCHIVE_NAME releasetest-${POM_VERSION}.war
ADD http://localhost:8081/artifactory/rabo-test-repo/nl/kristalsoftware/tests/releasetest/${POM_VERSION}/${ARCHIVE_NAME} ${DEPLOYMENT_DIR}
ENTRYPOINT java -jar ${PAYARA_ARCHIVE}.jar --deploy ${ARCHIVE_NAME}
