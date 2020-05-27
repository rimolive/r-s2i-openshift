R Docker images
===============

This repository contains the source for building various versions of
the R application as a reproducible Docker image using
[source-to-image](https://github.com/openshift/source-to-image).

For more information about contributing, see
[the Contribution Guidelines](https://github.com/sclorg/welcome/blob/master/contribution.md).
For more information about concepts used in these docker images, see the
[Landing page](https://github.com/sclorg/welcome).


Versions
---------------
R versions currently provided are:
* [r-3.4](3.4.3)
* [r-3.5](3.5.0)
* [r-3.6](3.6.0)

CentOS versions currently supported are:
* CentOS7

Installation
---------------
To build a R image, read the following instructions:

*  **CentOS based image**

    This image is available on DockerHub. To download it run:

    ```
    $ docker pull rimolive/r-36-centos7
    ```

    To build a R image from scratch run:

    ```
    $ git clone https://github.com/rimolive/r-s2i-openshift.git
    $ cd r-s2i-openshift
    $ make build
    ```

Usage
---------------------------------

For information about usage of Dockerfile for R 3.4.3,
see [usage documentation](3.4.3/README.md).

For information about usage of Dockerfile for R 3.5.0,
see [usage documentation](3.5.0/README.md).

For information about usage of Dockerfile for R 3.6.0,
see [usage documentation](3.6.0/README.md).

Test
---------------------
This repository also provides a [S2I](https://github.com/openshift/source-to-image) test framework,
which launches tests to check functionality of a simple Python application built on top of the s2i-python-container image.

Users can choose between testing a Python test application based on a CentOS image.

*  **CentOS based image**

    ```
    $ cd r-s2i-openshift
    $ make test
    ```


Repository organization
------------------------
* **`<r-version>`**

    * **Dockerfile**

        CentOS based Dockerfile.

    * **`s2i/bin/`**

        This folder contains scripts that are run by [S2I](https://github.com/openshift/source-to-image):

        *   **assemble**

            Used to install the sources into the location where the application
            will be run and prepare the application for deployment (eg. installing
            dependencies, etc.)

        *   **run**

            This script is responsible for running the application by using the
            application web server.

        *   **usage***

            This script prints the usage of this image.

    * **`test/`**

        This folder contains a [S2I](https://github.com/openshift/source-to-image)
        test framework with a simple server.

        * **`setup-test-app/`**

            Simple Gunicorn application used for testing purposes by the [S2I](https://github.com/openshift/source-to-image) test framework.

        * **`standalone-test-app/`**

            Simple standalone application used for testing purposes by the [S2I](https://github.com/openshift/source-to-image) test framework.

        * **run**

            Script that runs the [S2I](https://github.com/openshift/source-to-image) test framework.

