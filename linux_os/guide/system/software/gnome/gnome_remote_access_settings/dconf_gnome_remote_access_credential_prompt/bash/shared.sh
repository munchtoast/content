# platform = multi_platform_all


{{{ bash_dconf_settings("org/gnome/Vino", "authentication-methods", "['vnc']", "local.d", "00-security-settings", rule_id=rule_id) }}}
{{{ bash_dconf_lock("org/gnome/Vino", "authentication-methods", "local.d", "00-security-settings-lock") }}}
