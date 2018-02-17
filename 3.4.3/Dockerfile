    
# rimolive/r-343-centos7
FROM centos/s2i-base-centos7

MAINTAINER Ricardo M. Oliveira <rmartine@redhat.com>

EXPOSE 8080

ENV R_VERSION=3.4.3 \
    LC_ALL=en_US.UTF8 \
    LANG=en_US.UTF8

ENV SUMMARY="" \
    DESCRIPTION=""

LABEL summary="$SUMMARY" \
      description="$DESCRIPTION" \
      io.k8s.description="$DESCRIPTION" \
      io.k8s.display-name="R 3.4.3" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,r,r343" \
      name="rimolive/r-34-centos7" \
      version="3.4.3" \
      release="1" \
      maintainer="Ricardo M. Oliveira <rmartine@redhat.com>"

RUN yum install -y epel-release \
    yum install -y R \
    yum clean all

COPY ./s2i/bin/ $STI_SCRIPTS_PATH

RUN chown -R 1001:1001 /opt/app-root

USER 1001

CMD $STI_SCRIPTS_PATH/usage
