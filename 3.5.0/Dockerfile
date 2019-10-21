    
# rimolive/r-35d-centos7
FROM centos/s2i-base-centos7

MAINTAINER Ricardo M. Oliveira <rmartine@redhat.com>

EXPOSE 8080

ENV R_VERSION=3.5.0d \
    LC_ALL=en_US.UTF8 \
    LANG=en_US.UTF8

ENV SUMMARY="" \
    DESCRIPTION=""

LABEL summary="$SUMMARY" \
      description="$DESCRIPTION" \
      io.k8s.description="$DESCRIPTION" \
      io.k8s.display-name="R 3.5.0" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,r,r35" \
      name="rimolive/r-35-centos7" \
      version="3.5.0" \
      release="1" \
      maintainer="Ricardo M. Oliveira <rmartine@redhat.com>"

RUN yum install -y epel-release && \
    yum install -y R v8314-v8-devel gdal-devel proj-devel proj-nad proj-epsg  && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /usr/lib64/R/library/base/R/Rprofile

COPY ./s2i/bin/ $STI_SCRIPTS_PATH

RUN chown -R 1001:1001 /opt/app-root && \
    chown -R 1001:1001 /usr/lib64/R/library

USER 1001

CMD $STI_SCRIPTS_PATH/usage
