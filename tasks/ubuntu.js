'use strict';

// -- Ubuntu Task --------------------------------------------------------------------

/*
 * Set all Ubuntu default configurations
 */

module.exports = {

	shell: {

		always_show_menu_options: {
			command: 'gsettings set com.canonical.Unity always-show-menus true',
			options: {
				stdout: true,
				stderr: true,
			},
		},

		show_all_boot_options: {
			command: 'sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop',
			options: {
				stdout: true,
				stderr: true,
			},
		},

		removes_swap_percentual: {
			command: [
				'sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop',
				'sudo sysctl vm.swappiness=10',
				'sudo echo vm.swappiness=10 >> /etc/sysctl.conf',
			].join('&&'),
			options: {
				stdout: true,
				stderr: true,
			},
		},

	},

};
