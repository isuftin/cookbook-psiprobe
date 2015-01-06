name             'cida_psiprobe'
maintainer       'Ivan Suftin'
maintainer_email 'isuftin@usgs.gov'
license          'gplv3'
description      'Deploys Psi-Probe to a CIDA Tomcat server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
supports         'centos'

depends "stig", '~> 0.1.0'
depends "wsi_tomcat", '~> 0.1.0'

recipe "cida_psiprobe::default", "Includes the recipe to the WSI Tomcat cookbook to deploy the application"

attribute "wsi_tomcat",
  :display_name => "WSI Tomcat Options",
  :type => "hash",
  :required => "required"
  
attribute "wsi_tomcat/instances",
  :display_name => "WSI Tomcat Instances",
  :type => "hash",
  :required => "required"
  
attribute "wsi_tomcat/instances/instance",
  :display_name => "WSI Tomcat Instance",
  :description => "The name of a tomcat instance to deploy to. (e.g., default)",
  :required => "required"
  
attribute "wsi_tomcat/instances/instance/application",
  :display_name => "WSI Tomcat Instance Application",
  :type => "hash",
  :required => "required"
  
attribute "wsi_tomcat/instances/instance/application/psiprobe",
  :display_name => "PSI-Probe Application",
  :type => "hash",
  :required => "required"
  
attribute "wsi_tomcat/instances/instance/application/psiprobe/url",
  :display_name => "PSI-Probe Application Artifact URL",
  :type => "string",
  :required => "required"
  
attribute "wsi_tomcat/instances/instance/application/psiprobe/url",
  :display_name => "PSI-Probe Application Artifact final name",
  :type => "string",
  :required => "required",
  :default => "psi-probe"
  