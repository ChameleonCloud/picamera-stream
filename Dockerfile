# Refer to https://www.balena.io/docs/reference/base-images/base-images/
FROM balenalib/raspberrypi3-debian-python:3.7-buster
RUN install_packages \
    python3-picamera

COPY stream_camera.py .
CMD ["python3", "stream_camera.py"]

EXPOSE 8000
