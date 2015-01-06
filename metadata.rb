name             'cida_psiprobe'
maintainer       'Ivan Suftin'
maintainer_email 'isuftin@usgs.gov'
license          'gplv3'
description      'Deploys Psi-Probe to a CIDA Tomcat server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
source_url       'https://github.com/USGS-CIDA/cookbook-psiprobe'


depends 'wsi_tomcat', '~> 0.1.0'
