# Use the hiera classess instead of old style hosts
hiera_include('classes', '')

# Master manifestfile
import 'nodes/*.pp'

# Set the filebucket path
filebucket { 'main': server => 'puppet' }
filebucket { 'local': path => '/var/lib/puppet/clientbucket' }

# Set system paths for puppet exec command
Exec {
  path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
