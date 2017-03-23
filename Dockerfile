FROM fedora:25
ADD ["sleeper.sh","/"]
RUN mkdir /mountpoint && chown -R 1001:0 /mountpoint /sleeper.sh
USER 1001
CMD [ "/sleeper.sh" ]
