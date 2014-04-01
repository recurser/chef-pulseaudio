Description
===========

This cookbook provides an easy way to install PulseAudio.

More information?
http://www.freedesktop.org/wiki/Software/PulseAudio/

Requirements
============

## Cookbooks:

* build-essential
* git

## Platforms:

* Debian
* Ubuntu
* CentOS
* RHEL
* Fedora
* Scientific
* Amazon

Attributes
==========

* `node['pulseaudio']['install_method']` - Installation method, ':source' or ':package' - default ':package'
* `node['pulseaudio']['prefix']` - Location prefix of where the installation files will go if installing via ':source'
* `node['pulseaudio']['git_repository']` - Location of the source git repository
* `node['pulseaudio']['git_revision']` - Revision of the git repository to install
* `node['pulseaudio']['compile_flags']` - Array of flags to use in compilation process

Usage
=====

1) include `recipe[pulseaudio]` in a run list
2) tweak the attributes via attributes/default.rb
    --- OR ---
    override the attribute on a higher level (http://wiki.opscode.com/display/chef/Attributes#Attributes-AttributesPrecedence)

References
==========

* [PulseAudio home page] (http://www.freedesktop.org/wiki/Software/PulseAudio/)

License and Authors
===================

Author: Dave Perrett <hello@daveperrett.com>
Copyright: 2014, Dave Perrett

Based heavily on the [yasm cookbook](https://github.com/escapestudios-cookbooks/yasm) by Escape Studios.
Author: David Joos <david@escapestudios.com>
Author: Escape Studios Development <dev@escapestudios.com>
Copyright: 2012-2013, Escape Studios

Unless otherwise noted, all files are released under the MIT license,
possible exceptions will contain licensing information in them.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.