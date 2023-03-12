FROM josh5/unmanic:0.2.3

ARG FFMPEG_BUILD=https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-linux64-gpl.tar.xz

RUN mkdir /ffmpeg && cd /ffmpeg && \
    wget ${FFMPEG_BUILD} -O - | tar -xvJf - && \
    rm /usr/local/bin/ffmpeg /usr/local/bin/ffprobe && \
    ln -s /ffmpeg/ffmpeg-master-latest-linux64-gpl/bin/ffmpeg /usr/local/bin/ffmpeg && \
    ln -s /ffmpeg/ffmpeg-master-latest-linux64-gpl/bin/ffprobe /usr/local/bin/ffprobe 
