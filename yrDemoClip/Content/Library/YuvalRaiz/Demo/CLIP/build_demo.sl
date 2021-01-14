namespace: YuvalRaiz.Demo.CLIP
flow:
  name: build_demo
  inputs:
    - service_name: Online Payment FrontEnd
    - service_type: a
    - host_prefix: op
    - sub_domain_name: onlinepay
    - subnet_id: '98'
  workflow:
    - do_nothing:
        do:
          io.cloudslang.base.utils.do_nothing:
            - domain_name: "${'%s.demo.mfdemos.com' % (sub_domain_name)}"
            - subnet: "${'''10.99.%s''' % (subnet_id)}"
            - service_name: '${service_name}'
            - host_prefix: '${host_prefix}'
        publish:
          - cmdb_json: "${''' {{\n\t\t\"cis\": [\n\t\t\t{{\n\t\t\t\t\"ucmdbId\": \"11\",\n\t\t\t\t\"type\": \"business_application\",\n\t\t\t\t\"properties\": {{\"name\":\"{service_name}\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"101\",\n\t\t\t\t\"type\": \"host_node\",\n\t\t\t\t\"properties\": {{\"name\":\"{host_prefix}lb\",\"primary_dns_name\":\"{host_prefix}lb.{domain_name}\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"102\",\n\t\t\t\t\"type\": \"host_node\",\n\t\t\t\t\"properties\": {{\"name\":\"{host_prefix}db\",\"primary_dns_name\":\"{host_prefix}db.{domain_name}\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"103\",\n\t\t\t\t\"type\": \"host_node\",\n\t\t\t\t\"properties\": {{\"name\":\"{host_prefix}dbbackup\",\"primary_dns_name\":\"{host_prefix}dbbackup.{domain_name}\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"104\",\n\t\t\t\t\"type\": \"host_node\",\n\t\t\t\t\"properties\": {{\"name\":\"{host_prefix}web1\",\"primary_dns_name\":\"{host_prefix}web1.{domain_name}\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"105\",\n\t\t\t\t\"type\": \"host_node\",\n\t\t\t\t\"properties\": {{\"name\":\"{host_prefix}web2\",\"primary_dns_name\":\"{host_prefix}web2.{domain_name}\"}}\n\t\t\t}},\n\t\t\t{{\n\t\t\t\t\"ucmdbId\": \"201\",\n\t\t\t\t\"type\": \"ip_address\",\n\t\t\t\t\"properties\": {{\"name\":\"{subnet}.1\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"202\",\n\t\t\t\t\"type\": \"ip_address\",\n\t\t\t\t\"properties\": {{\"name\":\"{subnet}.2\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"203\",\n\t\t\t\t\"type\": \"ip_address\",\n\t\t\t\t\"properties\": {{\"name\":\"{subnet}.3\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"204\",\n\t\t\t\t\"type\": \"ip_address\",\n\t\t\t\t\"properties\": {{\"name\":\"{subnet}.4\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"205\",\n\t\t\t\t\"type\": \"ip_address\",\n\t\t\t\t\"properties\": {{\"name\":\"{subnet}.5\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"301\",\n\t\t\t\t\"type\": \"apache\",\n\t\t\t\t\"properties\": {{\"discovered_product_name\": \"apache\",\"document_root\": \"/var/www/html\", \"server_root\": \"/eyc/httpd\", \"webserver_type\": \"LB\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"302\",\n\t\t\t\t\"type\": \"postgresql\",\n\t\t\t\t\"properties\": {{\"discovered_product_name\": \"Postgresql\",\"build_number\": \"10.11\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"303\",\n\t\t\t\t\"type\": \"postgresql\",\n\t\t\t\t\"properties\": {{\"discovered_product_name\": \"Postgresql\",\"build_number\": \"10.11\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"304\",\n\t\t\t\t\"type\": \"tomcat\",\n\t\t\t\t\"properties\": {{\"discovered_product_name\": \"Apache Tomcat\",\"document_root\": \"/var/www/html\", \"server_root\": \"/eyc/httpd\", \"webserver_type\": \"LB\"}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"305\",\n\t\t\t\t\"type\": \"tomcat\",\n\t\t\t\t\"properties\": {{\"discovered_product_name\": \"Apache Tomcat\",\"document_root\": \"/var/www/html\", \"server_root\": \"/eyc/httpd\", \"webserver_type\": \"LB\"}}\n\t\t\t}}\n\t\t],\n\t\t\"relations\": [\n\t\t\t{{\n\t\t\t\t\"ucmdbId\":\"51\",\n\t\t\t\t\"type\": \"containment\",\n\t\t\t\t\"end1Id\": 11,\n\t\t\t\t\"end2Id\": 301,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\":\"52\",\n\t\t\t\t\"type\": \"usage\",\n\t\t\t\t\"end1Id\": 11,\n\t\t\t\t\"end2Id\": 301,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\":\"411\",\n\t\t\t\t\"type\": \"containment\",\n\t\t\t\t\"end1Id\": 101,\n\t\t\t\t\"end2Id\": 201,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\":\"421\",\n\t\t\t\t\"type\": \"containment\",\n\t\t\t\t\"end1Id\": 102,\n\t\t\t\t\"end2Id\": 202,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\":\"431\",\n\t\t\t\t\"type\": \"containment\",\n\t\t\t\t\"end1Id\": 103,\n\t\t\t\t\"end2Id\": 203,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\":\"441\",\n\t\t\t\t\"type\": \"containment\",\n\t\t\t\t\"end1Id\": 104,\n\t\t\t\t\"end2Id\": 204,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\":\"451\",\n\t\t\t\t\"type\": \"containment\",\n\t\t\t\t\"end1Id\": 105,\n\t\t\t\t\"end2Id\": 205,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"412\",\n\t\t\t\t\"type\": \"composition\",\n\t\t\t\t\"end1Id\": 101,\n\t\t\t\t\"end2Id\": 301,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"422\",\n\t\t\t\t\"type\": \"composition\",\n\t\t\t\t\"end1Id\": 102,\n\t\t\t\t\"end2Id\": 302,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"432\",\n\t\t\t\t\"type\": \"composition\",\n\t\t\t\t\"end1Id\": 103,\n\t\t\t\t\"end2Id\": 303,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"442\",\n\t\t\t\t\"type\": \"composition\",\n\t\t\t\t\"end1Id\": 104,\n\t\t\t\t\"end2Id\": 304,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"452\",\n\t\t\t\t\"type\": \"composition\",\n\t\t\t\t\"end1Id\": 105,\n\t\t\t\t\"end2Id\": 305,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"501\",\n\t\t\t\t\"type\": \"consumer_Provider\",\n\t\t\t\t\"end1Id\": 303,\n\t\t\t\t\"end2Id\": 302,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"502\",\n\t\t\t\t\"type\": \"consumer_Provider\",\n\t\t\t\t\"end1Id\": 301,\n\t\t\t\t\"end2Id\": 304,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"503\",\n\t\t\t\t\"type\": \"consumer_Provider\",\n\t\t\t\t\"end1Id\": 301,\n\t\t\t\t\"end2Id\": 305,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"504\",\n\t\t\t\t\"type\": \"Dependency\",\n\t\t\t\t\"end1Id\": 302,\n\t\t\t\t\"end2Id\": 304,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}},{{\n\t\t\t\t\"ucmdbId\": \"505\",\n\t\t\t\t\"type\": \"Dependency\",\n\t\t\t\t\"end1Id\": 302,\n\t\t\t\t\"end2Id\": 305,\n\t\t\t\t\"properties\": {{}}\n\t\t\t}}\n\t\t]\n\t}}'''.format (service_name=service_name,host_prefix=host_prefix,domain_name=domain_name,subnet=subnet)}"
          - host_list: "${'''{host_prefix}lb,{host_prefix}db,{host_prefix}dbbackup,{host_prefix}web1,{host_prefix}web2'''.format (host_prefix=host_prefix)}"
        navigate:
          - SUCCESS: create_objects
          - FAILURE: ssh_command
    - ssh_command:
        do:
          io.cloudslang.base.ssh.ssh_command:
            - host: "${get_sp('YuvalRaiz.Demo.CLIP.dns_server')}"
            - command: "${'''/mfdemos_scripts/manage_dns.py --smartBulk %s %s %s \"%s\"''' % (host_list, sub_domain_name, subnet_id, service_name )}"
            - username: root
            - private_key_file: /root/Emerging_Key_pair.pem
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
    - create_objects:
        do:
          YuvalRaiz.UCMDB.create_objects:
            - ucmdb_url: "${get_sp('YuvalRaiz.Demo.CLIP.ucmdb_url')}"
            - username: "${get_sp('YuvalRaiz.Demo.CLIP.ucmdb_username')}"
            - password:
                value: "${get_sp('YuvalRaiz.Demo.CLIP.ucmdb_passwrod')}"
                sensitive: true
            - ucmdb_objects_json: '${cmdb_json}'
        navigate:
          - FAILURE: on_failure
          - SUCCESS: ssh_command
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      do_nothing:
        x: 47
        'y': 137
      ssh_command:
        x: 179
        'y': 244
        navigate:
          28b77dcf-7f6a-9f17-a4c7-fa7b45a6d4a7:
            targetId: 67b99681-0dca-e547-882a-3864a0ac18f2
            port: SUCCESS
      create_objects:
        x: 375
        'y': 121
    results:
      SUCCESS:
        67b99681-0dca-e547-882a-3864a0ac18f2:
          x: 543
          'y': 125
