FROM artifactory.rtr.cloud/docker/sonarsource/sonar-scanner-cli:10.0

USER 0

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY cleanup.sh /cleanup.sh
RUN chmod +x /cleanup.sh

ENTRYPOINT ["/entrypoint.sh"]
