#!/bin/bash

SCRIPT_SKIP="1"

ffbuild_depends() {
    # For universal variants, only include dependencies explicitly enabled in defaults-universal-gpl.sh
    if [[ $VARIANT == universal-gpl || $VARIANT == universal-lgpl ]]; then
        echo libiconv
        echo zlib
        echo fribidi
        echo gmp
        echo libxml2
        echo openssl
        echo xz
        echo fonts
        echo vmaf
        echo aom
        echo dav1d
        echo svtav1
        echo libwebp
        echo libjxl
        echo zimg
        echo srt
        echo onevpl
        echo soxr
        echo libass
        echo x264
        echo x265
        echo libvpx
        echo libmp3lame
        echo libopus
        echo libvorbis
        echo amf
        echo ffnvcodec
        echo schannel
        echo rpath
        return 0
    fi

    echo libiconv
    echo zlib
    echo fribidi
    echo gmp
    echo libxml2
    echo openssl
    echo xz
    echo fonts
    echo lcevcdec
    echo libvorbis
    echo opencl
    echo pulseaudio
    echo vmaf
    echo x11
    echo vulkan
    echo amf
    echo aom
    echo aribb24
    echo avisynth
    echo chromaprint
    echo dav1d
    echo davs2
    echo dvd
    echo fdk-aac
    echo ffnvcodec
    echo frei0r
    echo gme
    echo kvazaar
    echo libaribcaption
    echo libass
    echo libbluray
    echo libjxl
    echo libmp3lame
    echo libopus
    echo libplacebo
    echo librist
    echo libssh
    echo libtheora
    echo libvpx
    echo libwebp
    echo libzmq
    echo lilv
    echo onevpl
    echo openal
    echo openapv
    echo opencore-amr
    echo openh264
    echo openjpeg
    echo openmpt
    echo rav1e
    echo rubberband
    echo schannel
    echo sdl
    echo snappy
    echo soxr
    echo srt
    echo svtav1
    echo twolame
    echo uavs3d
    echo vaapi
    echo vidstab
    echo vvenc
    echo whisper
    echo x264
    echo x265
    echo xavs2
    echo xvid
    echo zimg
    echo zvbi

    echo rpath
}

ffbuild_enabled() {
    return 0
}

ffbuild_dockerfinal() {
    return 0
}

ffbuild_dockerdl() {
    return 0
}

ffbuild_dockerlayer() {
    return 0
}

ffbuild_dockerstage() {
    return 0
}

ffbuild_dockerbuild() {
    return 0
}

ffbuild_ldexeflags() {
    return 0
}
