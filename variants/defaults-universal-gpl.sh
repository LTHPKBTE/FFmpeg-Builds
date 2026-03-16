#!/bin/bash
# Universal Windows/Cross-platform variant
FF_CONFIGURE="--enable-gpl --enable-version3 --disable-debug --disable-everything"

# Video decoders
FF_CONFIGURE="$FF_CONFIGURE --enable-decoder=h264,hevc,av1,libdav1d,vp9,vp8,mpeg4,mpeg2video,mpeg1video,vc1,wmv3,prores,dnxhd,mjpeg,rawvideo,png,webp,libjxl"

# Audio decoders
FF_CONFIGURE="$FF_CONFIGURE --enable-decoder=aac,mp3,ac3,eac3,opus,vorbis,flac,alac,pcm_s16le,pcm_s24le,pcm_s32le,pcm_f32le,pcm_f64le,pcm_u8"

# Subtitle decoders
FF_CONFIGURE="$FF_CONFIGURE --enable-decoder=srt,subrip,ass,webvtt"

# Demuxers
FF_CONFIGURE="$FF_CONFIGURE --enable-demuxer=mov,mp4,matroska,avi,flv,mpegts,mpegps,webm,ogg,asf,mxf,wav,flac,ape,image2,image2pipe,rawvideo,hls,dash,srt,ass,webvtt,mp3,aac,ac3,dts,truehd"

# Muxers
FF_CONFIGURE="$FF_CONFIGURE --enable-muxer=mp4,mov,matroska,avi,flv,mpegts,webm,ogg,asf,wav,flac,image2,image2pipe,rawvideo,hls,dash,srt,ass,webvtt,mp3,ac3,dts"

# Protocols
FF_CONFIGURE="$FF_CONFIGURE --enable-protocol=file,http,https,tls,rtmp,rtp,rtsp,udp,tcp,srt,hls,dash,pipe,concat,data,crypto"

# Parsers
FF_CONFIGURE="$FF_CONFIGURE --enable-parser=h264,hevc,av1,vp9,vp8,mpeg4video,mpegvideo,mpegaudio,aac,ac3,eac3,opus,vorbis,flac,png,mjpeg,webp"

# Bitstream filters
FF_CONFIGURE="$FF_CONFIGURE --enable-bsf=h264_mp4toannexb,hevc_mp4toannexb,av1_metadata,vp9_superframe,extract_extradata,aac_adtstoasc"

# Encoders
FF_CONFIGURE="$FF_CONFIGURE --enable-encoder=libx264,libx265,libvpx-vp9,libvpx-vp8,libaom-av1,libsvtav1,mjpeg,png,libwebp,libjxl,aac,libmp3lame,libvorbis,libopus,flac,alac,pcm_s16le,pcm_s24le,pcm_s32le,pcm_f32le,pcm_f64le,pcm_u8,rawvideo,srt,subrip,ass,webvtt,h264_nvenc,hevc_nvenc,av1_nvenc,h264_qsv,hevc_qsv,av1_qsv,h264_amf,hevc_amf,av1_amf"

# Filters
FF_CONFIGURE="$FF_CONFIGURE --enable-filter=format,aformat,fifo,afifo,buffersrc,buffersink,abuffersrc,abuffersink,null,scale,crop,pad,overlay,hflip,vflip,rotate,transpose,trim,setpts,fps,yadif,bwdif,atempo,aresample,anull,volume,aevalsrc,amerge,amix,pan,silencedetect,loudnorm,dynaudnorm,zscale,libvmaf,drawtext"

# Hardware acceleration
FF_CONFIGURE="$FF_CONFIGURE --enable-hwaccel=h264_d3d11va,h264_dxva2,h264_nvdec,h264_qsv,hevc_d3d11va,hevc_dxva2,hevc_nvdec,hevc_qsv,vp9_d3d11va,vp9_dxva2,vp9_nvdec,vp9_qsv,av1_d3d11va,av1_dxva2,av1_nvdec,av1_qsv"

# External library dependencies for software encoders
FF_CONFIGURE="$FF_CONFIGURE --enable-libx264 --enable-libx265 --enable-libvpx --enable-libaom --enable-libmp3lame --enable-libopus --enable-libvorbis"

# Modern & Recommended features
FF_CONFIGURE="$FF_CONFIGURE --enable-libdav1d --enable-libsvtav1 --enable-libwebp --enable-libjxl --enable-libzimg --enable-libvmaf --enable-libsrt --enable-libxml2 --enable-libvpl --enable-libsoxr --enable-libass --enable-libfreetype --enable-libharfbuzz"

FF_CFLAGS=""
FF_CXXFLAGS=""
FF_LDFLAGS=""
GIT_BRANCH="master"
LICENSE_FILE="COPYING.GPLv3"
