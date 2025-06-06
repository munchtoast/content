# platform = multi_platform_fedora,multi_platform_rhel,multi_platform_ol,multi_platform_almalinux
# reboot = true
# strategy = restrict
# complexity = low
# disruption = low

{{%- if product in ["ol7"] %}}
  {{%- set auditd_conf_path=audisp_conf_path + "/audispd.conf" %}}
{{%- else %}}
  {{%- set auditd_conf_path=audisp_conf_path + "/auditd.conf" %}}
{{%- endif %}}

{{{set_config_file(path=auditd_conf_path,
                  parameter="overflow_action",
                  value="syslog",
                  create=true,
                  insensitive=true,
                  separator=" = ",
                  separator_regex="\s*=\s*",
                  prefix_regex="^\s*", rule_id=rule_id)}}}
