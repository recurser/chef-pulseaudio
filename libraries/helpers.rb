#
# Cookbook Name:: pulseaudio
# Library:: helpers
#
# Copyright 2014, Dave Perrett
#
# Based on https://github.com/escapestudios-cookbooks/yasm

module PulseAudio
    module Helpers
        # Returns an array of package names that will install pulseaudio on a node.
        # Package names returned are determined by the platform running this recipe.
        def pulseaudio_packages
            value_for_platform(
                [ "ubuntu" ] => { "default" => [ "pulseaudio" ] },
                "default" => [ "pulseaudio" ]
            )
        end
    end
end

class Chef::Recipe
    include PulseAudio::Helpers
end
