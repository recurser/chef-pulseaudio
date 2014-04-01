name             "pulseaudio"
maintainer       "Dave Perrett"
maintainer_email "hello@daveperrett.com"
license          "MIT"
description      "Installs/Configures PulseAudio"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w{ debian ubuntu centos redhat fedora scientific amazon }.each do |os|
supports os
end

depends "build-essential"
depends "git"

recipe "pulseaudio", "Installs PulseAudio."
recipe "pulseaudio::package", "Installs PulseAudio using packages."
recipe "pulseaudio::source", "Installs PulseAudio from source."
