#!/bin/bash
# This test only applies to platforms that check the pwquality.conf.d directory
# platform = Oracle Linux 8, Oracle Linux 9
# variables = var_password_pam_{{{ VARIABLE }}}={{{ TEST_VAR_VALUE }}}

{{% if product == "ubuntu2404" %}}
{{{ bash_pam_pwquality_enable() }}}
{{% endif %}}

truncate -s 0 /etc/security/pwquality.conf

echo "{{{ VARIABLE }}} = {{{ TEST_CORRECT_VALUE }}}" >> /etc/security/pwquality.conf

config_dir="/etc/security/pwquality.conf.d"
mkdir -p $config_dir
echo "{{{ VARIABLE }}} = {{{ TEST_CORRECT_VALUE }}}" >> $config_dir/test_file.conf
