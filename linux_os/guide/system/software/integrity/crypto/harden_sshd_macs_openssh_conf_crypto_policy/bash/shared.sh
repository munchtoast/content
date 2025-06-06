# platform = Red Hat Enterprise Linux 8,multi_platform_ol,multi_platform_fedora

{{{ bash_instantiate_variables("sshd_approved_macs") }}}

{{{ set_config_file(
        path="/etc/crypto-policies/back-ends/openssh.config",
        parameter="MACs",
        value="${sshd_approved_macs}",
        create=true,
        insensitive=false,
        prefix_regex="^.*", rule_id=rule_id)
}}}
