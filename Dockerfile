FROM ekreative/android

ENV ANDROID_NDK "ndk-bundle" "cmake;3.6.4111459" "lldb;2.3"
RUN android-accept-licenses "sdkmanager --verbose $ANDROID_NDK"
ENV ANDROID_NDK_HOME ${ANDROID_HOME}/ndk-bundle
ENV PATH ${ANDROID_NDK_HOME}:${PATH}

# Change timezone
RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime
