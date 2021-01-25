namespace: MFDemos.CLIP
flow:
  name: Update_OnlinePay_FW_Configuration
  workflow:
    - deploy_new_configuration:
        do:
          io.cloudslang.base.ssh.ssh_command:
            - host: "${get_sp('YuvalRaiz.Demo.CLIP.opsb_server')}"
            - command: /root/bin/onlinepay.sh stop
            - username: root
            - private_key_file: /root/Emerging_Key_pair.pem
        publish:
          - standard_out
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  outputs:
    - standard_out
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      deploy_new_configuration:
        x: 205
        'y': 171
        navigate:
          941ff60e-60f0-ef6b-28dc-f46560be4dcf:
            targetId: 9a8d7f88-8ab7-c2ce-64ea-2e64d805be36
            port: SUCCESS
    results:
      SUCCESS:
        9a8d7f88-8ab7-c2ce-64ea-2e64d805be36:
          x: 442
          'y': 116
