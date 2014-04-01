#
# Cookbook Name:: pulseaudio
# Recipe:: default
#
# Copyright 2014, Dave Perrett
#
# Based on https://github.com/escapestudios-cookbooks/yasm

case node[:pulseaudio][:install_method]
    when :source
        include_recipe "pulseaudio::source"
    when :package
        include_recipe "pulseaudio::package"
end
