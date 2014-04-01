#
# Cookbook Name:: pulseaudio
# Attributes:: default
#
# Copyright 2014, Dave Perrett
#
# Based on https://github.com/escapestudios-cookbooks/yasm

default[:pulseaudio][:install_method] = :package
default[:pulseaudio][:prefix]         = "/usr/local"
default[:pulseaudio][:git_repository] = "git://anongit.freedesktop.org/pulseaudio/pulseaudio"
default[:pulseaudio][:git_revision]   = "HEAD"
default[:pulseaudio][:compile_flags]  = []
