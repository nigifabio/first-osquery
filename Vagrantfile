# -*- mode: ruby -*-
# vi: set ft=ruby :

# This file was generated by SecGen
# 2018-04-15 12:45:35 +0200
# Based on scenarios/default_scenario.xml

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "escalation" do |escalation|

    config.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.customize ['modifyvm', :id, '--pae', 'on']
      vb.customize ['modifyvm', :id, '--hwvirtex', 'off']
      vb.customize ['modifyvm', :id, '--vtxvpid', 'off']
    end

    
    # SecGen datastore
    # {}

    # SecGen modules

    # base: modules/bases/debian_puppet_32
    #   id: scenariosystembase
    #   attributes: {"module_path"=>["modules/bases/debian_puppet_32"], "name"=>["Debian 7 Wheezy Server"], "author"=>["Z. Cliffe Schreuders"], "module_license"=>["GPLv3"], "description"=>["Based on the Official Puppet Vagrant box. Debian 7.8 (wheezy) 32-bit (i386), Puppet 4.3.2 / Puppet Enterprise 2015.3.2 (agent).\n    This is the primary base box used during development. For testing purposes, the default root password is puppet."], "cpu_word_size"=>["32-bit"], "type"=>["server", "cli"], "platform"=>["linux", "unix"], "distro"=>["Debian 7.8 (wheezy) 32-bit (i386)"], "url"=>["https://app.vagrantup.com/secgen/boxes/debian_wheezy_puppet/versions/1.0.0/providers/virtualbox.box"], "ovirt_template"=>["debian_server"], "reference"=>["https://atlas.hashicorp.com/puppetlabs"], "software_license"=>["various"]}
    #   conflicts: []
    #   requires: []
    
    escalation.vm.box = "modules_bases_debian_puppet_32"
    escalation.vm.box_url = "https://app.vagrantup.com/secgen/boxes/debian_wheezy_puppet/versions/1.0.0/providers/virtualbox.box"
    
    

    # utility: modules/utilities/unix/update/unix_update
    #   id: 
    #   attributes: {"module_path"=>["modules/utilities/unix/update/unix_update"], "name"=>["Unix update repository"], "author"=>["Jason Keighley"], "module_license"=>["Apache v2"], "description"=>["An update module for unix"], "type"=>["update"], "platform"=>["linux"]}
    #   conflicts: []
    #   requires: []
    #   received_inputs: {""=>[]}
    escalation.vm.provision "puppet" do | modules_utilities_unix_update_unix_update |
      modules_utilities_unix_update_unix_update.facter = {
        "base64_inputs_file" => '071751632e24f37a0cad0ab6a452cf48',
      }
      modules_utilities_unix_update_unix_update.module_path = "puppet/escalation/modules"
      modules_utilities_unix_update_unix_update.environment_path = "environments/"
      modules_utilities_unix_update_unix_update.environment = "production"
      modules_utilities_unix_update_unix_update.synced_folder_type = "rsync"
      modules_utilities_unix_update_unix_update.manifests_path = "puppet/escalation/modules/unix_update"
      modules_utilities_unix_update_unix_update.manifest_file = "unix_update.pp"
    end

    # service: modules/services/unix/http/apache_wheezy_compatible/apache
    #   id: 
    #   attributes: {"module_path"=>["modules/services/unix/http/apache_wheezy_compatible/apache"], "name"=>["Apache HTTP Server - Wheezy Compatible"], "author"=>["Connor Wilson", "Thomas Shaw", "Puppet Labs"], "module_license"=>["Apache v2"], "description"=>["An installation of Apache"], "type"=>["httpd"], "platform"=>["linux"], "reference"=>["https://httpd.apache.org/", "https://forge.puppet.com/puppetlabs/apache"], "software_name"=>["apache"], "software_license"=>["Apache v2"], "conflict"=>["\n    apache\n  ", "\n    Kali\n  "], "requires"=>["\n    update\n  "]}
    #   conflicts: [{"software_name"=>["apache"]}, {"name"=>["Kali"]}]
    #   requires: [{"type"=>["update"]}]
    escalation.vm.provision "puppet" do | modules_services_unix_http_apache_wheezy_compatible_apache |
      modules_services_unix_http_apache_wheezy_compatible_apache.module_path = "puppet/escalation/modules"
      modules_services_unix_http_apache_wheezy_compatible_apache.environment_path = "environments/"
      modules_services_unix_http_apache_wheezy_compatible_apache.environment = "production"
      modules_services_unix_http_apache_wheezy_compatible_apache.synced_folder_type = "rsync"
      modules_services_unix_http_apache_wheezy_compatible_apache.manifests_path = "puppet/escalation/modules/apache"
      modules_services_unix_http_apache_wheezy_compatible_apache.manifest_file = "apache.pp"
    end

    # generator: modules/generators/messages/welcome_message
    #   id: scenariosystemvulnerability12generator2modulesvulnerabilitiesunixwebappgitlist040
    #   attributes: {"module_path"=>["modules/generators/messages/welcome_message"], "name"=>["Welcome Message Generator"], "author"=>["Thomas Shaw"], "module_license"=>["MIT"], "description"=>["Generates a welcome message."], "type"=>["string_generator", "message_generator", "local_calculation"], "platform"=>["linux", "windows"], "output_type"=>["generated_strings"]}
    #   conflicts: []
    #   requires: []
    #   writes out ('["Greetings! Welcome to the server."]') to scenariosystemvulnerability1 -> strings_to_leak

    # generator: modules/generators/flag/flag_base64
    #   id: scenariosystemvulnerability12generator1modulesvulnerabilitiesunixwebappgitlist040
    #   attributes: {"module_path"=>["modules/generators/flag/flag_base64"], "name"=>["Base64 Flag Generator"], "author"=>["Z. Cliffe Schreuders"], "module_license"=>["MIT"], "description"=>["Uses Ruby's SecureRandom to generate a flag made up of \"flag:\" + base64 digits (A-Z, a-z, 0-9, +, / and =)."], "type"=>["flag_generator", "local_calculation"], "platform"=>["linux", "windows"], "reference"=>["http://ruby-doc.org/stdlib-2.2.2/libdoc/securerandom/rdoc/SecureRandom.html#method-c-base64"], "output_type"=>["generated_strings"]}
    #   conflicts: []
    #   requires: []
    #   writes out ('["flag{45jYFFqOQecixgIVx8m5w}"]') to scenariosystemvulnerability1 -> strings_to_leak

    # generator: modules/generators/filenames/random_filename
    #   id: scenariosystemvulnerability13generator2modulesvulnerabilitiesunixwebappgitlist040
    #   attributes: {"module_path"=>["modules/generators/filenames/random_filename"], "name"=>["Random Filename Generator"], "author"=>["Thomas Shaw"], "module_license"=>["MIT"], "description"=>["Random filename generator using the Faker ruby gem."], "type"=>["string_generator", "filename_generator", "filename", "local_calculation"], "platform"=>["linux", "windows"], "reference"=>["https://github.com/stympy/faker"], "read_fact"=>["file_name", "extension"], "output_type"=>["filename"]}
    #   conflicts: []
    #   requires: []
    #   writes out ('["quae.jpg"]') to scenariosystemvulnerability1 -> leaked_filenames

    # generator: modules/generators/filenames/random_filename
    #   id: scenariosystemvulnerability13generator1modulesvulnerabilitiesunixwebappgitlist040
    #   attributes: {"module_path"=>["modules/generators/filenames/random_filename"], "name"=>["Random Filename Generator"], "author"=>["Thomas Shaw"], "module_license"=>["MIT"], "description"=>["Random filename generator using the Faker ruby gem."], "type"=>["string_generator", "filename_generator", "filename", "local_calculation"], "platform"=>["linux", "windows"], "reference"=>["https://github.com/stympy/faker"], "read_fact"=>["file_name", "extension"], "output_type"=>["filename"]}
    #   conflicts: []
    #   requires: []
    #   writes out ('["voluptatibus.odp"]') to scenariosystemvulnerability1 -> leaked_filenames

    # vulnerability: modules/vulnerabilities/unix/webapp/gitlist_040
    #   id: scenariosystemvulnerability1
    #   attributes: {"module_path"=>["modules/vulnerabilities/unix/webapp/gitlist_040"], "name"=>["Gitlist 0.4.0 RCE"], "author"=>["Thomas Shaw"], "module_license"=>["MIT"], "description"=>["\n    Gitlist before 0.5.0 allows remote attackers to execute arbitrary commands via shell metacharacters in the file\n    name in the URI of a request for a (1) blame, (2) file, or (3) stats page, as demonstrated by requests to\n    blame/master/, master/, and stats/master/.\n  "], "type"=>["webapp"], "privilege"=>["user_rwx"], "access"=>["remote"], "platform"=>["linux"], "read_fact"=>["port", "strings_to_leak", "images_to_leak", "leaked_filenames"], "default_input"=>["\n    80\n  ", "\n    \n    \n  ", "\n    \n    \n  "], "difficulty"=>["low"], "cve"=>["CVE-2014-4511"], "cvss_base_score"=>["7.5"], "cvss_vector"=>["AV:N/AC:L/Au:N/C:P/I:P/A:P"], "msf_module"=>["exploit/linux/http/gitlist_exec"], "hint"=>["Visit the webapp in a browser at: ip:80/gitlist "], "requires"=>["\n    .*apache\n    httpd\n  "]}
    #   conflicts: []
    #   requires: [{"module_path"=>[".*apache"], "type"=>["httpd"]}]
    #   received_inputs: {"port"=>["80"], "strings_to_leak"=>["Greetings! Welcome to the server.", "flag{45jYFFqOQecixgIVx8m5w}"], "leaked_filenames"=>["quae.jpg", "voluptatibus.odp"]}
    escalation.vm.provision "puppet" do | modules_vulnerabilities_unix_webapp_gitlist_040 |
      modules_vulnerabilities_unix_webapp_gitlist_040.facter = {
        "base64_inputs_file" => 'd83627e8771a81851f4c956e8280fea2',
      }
      modules_vulnerabilities_unix_webapp_gitlist_040.module_path = "puppet/escalation/modules"
      modules_vulnerabilities_unix_webapp_gitlist_040.environment_path = "environments/"
      modules_vulnerabilities_unix_webapp_gitlist_040.environment = "production"
      modules_vulnerabilities_unix_webapp_gitlist_040.synced_folder_type = "rsync"
      modules_vulnerabilities_unix_webapp_gitlist_040.manifests_path = "puppet/escalation/modules/gitlist_040"
      modules_vulnerabilities_unix_webapp_gitlist_040.manifest_file = "gitlist_040.pp"
    end

    # utility: modules/utilities/unix/audit_tools/scanners/nmap
    #   id: 
    #   attributes: {"module_path"=>["modules/utilities/unix/audit_tools/scanners/nmap"], "name"=>["Nmap Security Scanner"], "author"=>["Thomas Shaw"], "module_license"=>["Apache v2"], "description"=>["Nmap network host, service and security scanner."], "type"=>["utility"], "platform"=>["linux"], "reference"=>["https://nmap.org/"], "requires"=>["\n    update\n  "]}
    #   conflicts: []
    #   requires: [{"type"=>["update"]}]
    #   received_inputs: {""=>[]}
    escalation.vm.provision "puppet" do | modules_utilities_unix_audit_tools_scanners_nmap |
      modules_utilities_unix_audit_tools_scanners_nmap.facter = {
        "base64_inputs_file" => '7491032212c976a70ff048739ae1e545',
      }
      modules_utilities_unix_audit_tools_scanners_nmap.module_path = "puppet/escalation/modules"
      modules_utilities_unix_audit_tools_scanners_nmap.environment_path = "environments/"
      modules_utilities_unix_audit_tools_scanners_nmap.environment = "production"
      modules_utilities_unix_audit_tools_scanners_nmap.synced_folder_type = "rsync"
      modules_utilities_unix_audit_tools_scanners_nmap.manifests_path = "puppet/escalation/modules/nmap"
      modules_utilities_unix_audit_tools_scanners_nmap.manifest_file = "nmap.pp"
    end

    # generator: modules/generators/flag/flag_hex
    #   id: scenariosystemvulnerability21generatormodulesvulnerabilitiesunixlocalsetuidnmap
    #   attributes: {"module_path"=>["modules/generators/flag/flag_hex"], "name"=>["Random Hex Generator"], "author"=>["Z. Cliffe Schreuders"], "module_license"=>["MIT"], "description"=>["Uses Ruby's SecureRandom to generate a message made up of hex digits (a-f0-9)."], "type"=>["flag_generator", "local_calculation"], "platform"=>["linux", "windows"], "reference"=>["http://ruby-doc.org/stdlib-2.2.2/libdoc/securerandom/rdoc/SecureRandom.html#method-c-hex"], "output_type"=>["generated_strings"]}
    #   conflicts: []
    #   requires: []
    #   writes out ('["flag{a0a4624bfb14134fd561f30b54fda6dd}"]') to scenariosystemvulnerability2 -> strings_to_leak

    # generator: modules/generators/filenames/random_filename
    #   id: scenariosystemvulnerability22generatormodulesvulnerabilitiesunixlocalsetuidnmap
    #   attributes: {"module_path"=>["modules/generators/filenames/random_filename"], "name"=>["Random Filename Generator"], "author"=>["Thomas Shaw"], "module_license"=>["MIT"], "description"=>["Random filename generator using the Faker ruby gem."], "type"=>["string_generator", "filename_generator", "filename", "local_calculation"], "platform"=>["linux", "windows"], "reference"=>["https://github.com/stympy/faker"], "read_fact"=>["file_name", "extension"], "output_type"=>["filename"]}
    #   conflicts: []
    #   requires: []
    #   writes out ('["quia.numbers"]') to scenariosystemvulnerability2 -> leaked_filenames

    # vulnerability: modules/vulnerabilities/unix/local/setuid_nmap
    #   id: scenariosystemvulnerability2
    #   attributes: {"module_path"=>["modules/vulnerabilities/unix/local/setuid_nmap"], "name"=>["Nmap Setuid"], "author"=>["Thomas Shaw"], "module_license"=>["MIT"], "description"=>["Nmap setuid local privilege escalation"], "type"=>["access_controls"], "privilege"=>["root_rwx"], "access"=>["local"], "platform"=>["linux"], "read_fact"=>["strings_to_leak", "leaked_filenames"], "default_input"=>["\n    \n  ", "\n    \n  "], "difficulty"=>["medium"], "requires"=>["\n    modules/utilities/unix/audit_tools/scanners/nmap\n  "]}
    #   conflicts: []
    #   requires: [{"module_path"=>["modules/utilities/unix/audit_tools/scanners/nmap"]}]
    #   received_inputs: {"strings_to_leak"=>["flag{a0a4624bfb14134fd561f30b54fda6dd}"], "leaked_filenames"=>["quia.numbers"]}
    escalation.vm.provision "puppet" do | modules_vulnerabilities_unix_local_setuid_nmap |
      modules_vulnerabilities_unix_local_setuid_nmap.facter = {
        "base64_inputs_file" => 'eb4594e3ec6cf72cddfc49917d5fbb90',
      }
      modules_vulnerabilities_unix_local_setuid_nmap.module_path = "puppet/escalation/modules"
      modules_vulnerabilities_unix_local_setuid_nmap.environment_path = "environments/"
      modules_vulnerabilities_unix_local_setuid_nmap.environment = "production"
      modules_vulnerabilities_unix_local_setuid_nmap.synced_folder_type = "rsync"
      modules_vulnerabilities_unix_local_setuid_nmap.manifests_path = "puppet/escalation/modules/setuid_nmap"
      modules_vulnerabilities_unix_local_setuid_nmap.manifest_file = "setuid_nmap.pp"
    end

    # service: modules/services/unix/smb/samba
    #   id: scenariosystemservice
    #   attributes: {"module_path"=>["modules/services/unix/smb/samba"], "name"=>["Samba file share Server"], "author"=>["example42", "Jason Keighley"], "module_license"=>["Apache v2"], "description"=>["An installation of Samba"], "type"=>["smb"], "platform"=>["linux"], "reference"=>["https://forge.puppet.com/example42/samba"], "software_name"=>["samba"], "software_license"=>["Apache v2"], "conflict"=>["\n    samba\n  "], "requires"=>["\n    update\n  "]}
    #   conflicts: [{"software_name"=>["samba"]}]
    #   requires: [{"type"=>["update"]}]
    escalation.vm.provision "puppet" do | modules_services_unix_smb_samba |
      modules_services_unix_smb_samba.module_path = "puppet/escalation/modules"
      modules_services_unix_smb_samba.environment_path = "environments/"
      modules_services_unix_smb_samba.environment = "production"
      modules_services_unix_smb_samba.synced_folder_type = "rsync"
      modules_services_unix_smb_samba.manifests_path = "puppet/escalation/modules/samba"
      modules_services_unix_smb_samba.manifest_file = "samba.pp"
    end

    # network: modules/networks/host_only/private_network_3
    #   id: scenariosystemnetwork
    #   attributes: {"module_path"=>["modules/networks/host_only/private_network_3"], "name"=>["Private Network #3"], "author"=>["Z. Cliffe Schreuders"], "module_license"=>["GPLv3"], "description"=>["A network using DHCP"], "type"=>["private_network"], "range"=>["dhcp"]}
    #   conflicts: []
    #   requires: []
  
      escalation.vm.network :private_network, type: "dhcp", auto_config: false
  

  end

end
