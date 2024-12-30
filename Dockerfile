#FROM archlinux:20200505
FROM archlinux:base-20241215.0.289170
#RUN pacman -Syu --noconfirm --needed gcc git make ncurses flex bison gperf python-pyserial python-click python-cryptography python-future python-pyparsing python-pyelftools cmake ninja ccache dfu-util \
#    gawk gperf grep gettext ncurses python2 python2-pip python-pip automake bison flex texinfo help2man libtool make autoconf unzip which patch doxygen cxxtest freetype2 pkgconf go
RUN pacman -Sy --noconfirm --needed gcc git make flex bison gperf python cmake ninja ccache dfu-util libusb autoconf automake which binutils go which texinfo unzip pkgconf patch help2man libtool freetype2 zlib nano
RUN mkdir /esp
# RUN git clone -b fluepke/snmp --recursive https://github.com/Fluepke/esp-idf.git /esp/esp-idf
RUN git clone -b v5.3.2 --depth 1 --recursive https://github.com/espressif/esp-idf.git /esp/esp-idf
ENV IDF_PATH="/esp/esp-idf"
# RUN pip2.7 install -r /esp/esp-idf/requirements.txt && pip install -r /esp/esp-idf/requirements.txt
RUN groupadd -g 1337 esp && useradd -r -u 1337 -g esp esp
RUN chown -R esp:esp /esp

RUN /esp/esp-idf/install.sh # && /esp/esp-idf/export.sh

ENV HOME=/esp
# docs not needed.9
#COPY ./docs/requirements.txt /tmp/requirements.txt
#RUN pip install -r /tmp/requirements.txt

USER esp
RUN git clone https://github.com/espressif/crosstool-NG.git /esp/crosstool-NG && git -C /esp/crosstool-NG checkout esp-13.2.0_20240530 && git -C /esp/crosstool-NG submodule update --init
# RUN sed -i 's/--enable-newlib-long-time_t //g' /esp/crosstool-NG/samples/xtensa-esp32-elf/crosstool.config
WORKDIR /esp/crosstool-NG
RUN ./bootstrap && ./configure --enable-local && make -j
RUN ./ct-ng xtensa-esp-elf && ./ct-ng build -j
RUN chmod -R u+w /esp/crosstool-NG/builds/xtensa-esp-elf
ENV PATH="/esp/crosstool-NG/builds/xtensa-esp-elf/bin/:${PATH}"
USER root
