puppetmodules-motd
======================

Puppet module to create a message of the day.

Tested on Debian GNU/Linux 7.0 Squeeze with Puppet 3.7. 
Patches for other operating systems are welcome.


Installation
------------

Clone this repo to a motd directory under your Puppet modules directory:

    git clone git://github.com/rroethof/puppetmodules-motd.git motd

If you don't have a Puppet Master you can create a manifest file
based on the notes below and run Puppet in stand-alone mode
providing the module directory you cloned this repo to:

    puppet apply --modulepath=modules motd.pp


Usage
-----

If you include the motd class the dns information will be configured.

    include motd

You can also configure specific settings via hiera:

