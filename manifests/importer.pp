# Class to consume the resources provided by the exporter class.
# when applied to a node, all tooling agttributed to RSAN will be set up
# @example
#   include rsan::importer
class rsan::importer {



  ##################### 1.Import logging from the exporter groups #####################
  # depending on the method, could be import exported respore with rsan tag
  #####################################################################################



  #################### 2. Deploy Client tools, and deploy PSL client #################
  # include postgresql::client , include puppet_enterprise::profile::controller need to make postgresql module a dependancies
  ####################################################################################

  include puppet_enterprise::profile::controller

  ################### 3. Telemetry dashboard ########################################
  # If using puppet_metrics_dashboard:

    #   class { 'puppet_metrics_dashboard':
      # add_dashboard_examples => true,
      # overwrite_dashboards   => false,
      # configure_telegraf     => true,
      #enable_telegraf        => true,
      #master_list            => $infranode,
      #puppetdb_list          => [$pdb],
      #postgres_host_list     => [$postgres],

      #}

      # master_list , puppetdb_list, postgres_host_list need to be queried  from the system programatically



  #######################################################################################


  ##################### 4. VPN client (openvpn) ########################################
  # deploy openvpn client, set up connection with preshared key use licence key UUID as preshared key
  # destination will need IT involvement, scope to make it possible with a dummy end point
  # Task to enable and disable connection
  ######################################################################################





}
