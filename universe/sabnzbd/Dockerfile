FROM fish/sabnzbd:latest
USER root
ADD https://github.com/midgetspy/Sick-Beard/raw/development/autoProcessTV/autoProcessTV.py \
    /sab-scripts/autoProcessTV.py
RUN chmod a+x /sab-scripts/autoProcessTV.py
ADD . /sab-scripts
RUN chmod 755 /sab-scripts /sab-scripts/autoProcessTV.py
USER sabnzbd
RUN echo hello world
