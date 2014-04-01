#
# Cookbook Name:: pulseaudio
# Recipe:: source
#
# Copyright 2014, Dave Perrett
#
# Based on https://github.com/escapestudios-cookbooks/yasm

include_recipe "build-essential"
include_recipe "git"

pulseaudio_packages.each do |pkg|
    package pkg do
        action :purge
    end
end

creates_pulseaudio = "#{node[:pulseaudio][:prefix]}/bin/pulseaudio"

file "#{creates_pulseaudio}" do
    action :nothing
end

git "#{Chef::Config[:file_cache_path]}/pulseaudio" do
    repository node[:pulseaudio][:git_repository]
    reference node[:pulseaudio][:git_revision]
    action :sync
    notifies :delete, resources(:file => creates_pulseaudio), :immediately
end

#write the flags used to compile to disk
template "#{Chef::Config[:file_cache_path]}/pulseaudio-compiled_with_flags" do
    source "compiled_with_flags.erb"
    owner "root"
    group "root"
    mode 0600
    variables(
        :compile_flags => node[:pulseaudio][:compile_flags]
    )
    notifies :delete, resources(:file => creates_pulseaudio), :immediately
end

bash "compile_pulseaudio" do
    cwd "#{Chef::Config[:file_cache_path]}/pulseaudio"
    code <<-EOH
        autoreconf
        automake --add-missing
        ./configure --prefix=#{node[:pulseaudio][:prefix]} #{node[:pulseaudio][:compile_flags].join(' ')}
        make clean && make && make install
    EOH
    creates "#{creates_pulseaudio}"
end
