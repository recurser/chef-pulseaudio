#
# Cookbook Name:: pulseaudio
# Recipe:: package
#
# Copyright 2014, Dave Perrett
#
# Based on https://github.com/escapestudios-cookbooks/yasm

pulseaudio_packages.each do |pkg|
    package pkg do
        action :upgrade
    end
end
