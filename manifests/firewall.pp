# == Class: consul
#
class consul::firewall(
  $manage = False,
) {

  if $manage {
    firewall { '400 - Consul firewall rules tcp':
      port   => [ 8300, 8301, 8302, 8400, 8600, ],
      proto  => 'tcp',
      action => 'accept',
    }

    firewall { '400 - Consul firewall rules udp':
      port   => [ 8300, 8301, 8302, 8400, 8600, ],
      proto  => 'udp',
      action => 'accept',
    }
  }

}
