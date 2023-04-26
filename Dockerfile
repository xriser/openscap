FROM almalinux:9.1

RUN dnf install -y wget openscap openscap-utils scap-security-guide

WORKDIR /tmp

RUN wget https://github.com/ComplianceAsCode/content/releases/download/v0.1.67/scap-security-guide-0.1.67.zip \
    && unzip scap-security-guide-0.1.67.zip \
    && mv scap-security-guide-0.1.67/*.xml /usr/share/xml/scap/ssg/content/ \
    && rm -rf scap-security-guide-0.1.67*

CMD [ "/bin/bash" ]
