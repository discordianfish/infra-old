FROM fish/sabnzbd:latest
USER root
RUN  mkdir /sab-scripts && chown sabnzb:sabnzb /sab-scripts
USER sabnzb
ADD https://github.com/midgetspy/Sick-Beard/raw/development/autoProcessTV/autoProcessTV.py \
    /sab-scripts/autoProcessTV.py
RUN chmod a+x /sab-scripts/autoProcessTV.py
ADD . /sab-scripts
