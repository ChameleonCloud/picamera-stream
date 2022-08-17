# Refer to https://www.balena.io/docs/reference/base-images/base-images/
ARG python_ver=3.10
ARG os_family=debian
ARG os_release=bullseye
ARG base_tag="balenalib/raspberrypi4-64-${os_family}-python:${python_ver}-${os_release}-run"

FROM "${base_tag}"
RUN install_packages python3-picamera

COPY stream_camera.py .
CMD ["stream_camera.py"]

EXPOSE 8000
