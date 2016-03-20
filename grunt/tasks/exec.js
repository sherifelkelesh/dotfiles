'use strict';

// -- Exec Task --------------------------------------------------------------------

module.exports = {

	shell: {

		backup: {
			command: 'mkdir <%= config.backup.path %>',
			options: {
				stdout: true,
				stderr: true,
			},
		},

		update: {
			command: [
				'sudo apt-get update',
				'sudo apt-get upgrade',
				'sudo apt-get dist-upgrade',
			].join('&&'),
			options: {
				stdout: true,
				stderr: true,
			},
		},

		zsh: {
			command: [
				'sudo apt-get install zsh',
				'chsh -s /usr/bin/zsh',
				'sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"',
			].join('&&'),
			options: {
				stdout: true,
				stderr: true,
			},
		},

		npm: {
			command: [
				'npm instal npm -g',
				'npm install gulp-cli -g',
				'npm install jshint -g',
				'npm install bower -g',
				'npm install gh -g',
			].join('&&'),
			options: {
				stdout: true,
				stderr: true,
			},
		},

		softwares: {
			command: [
				'sudo apt-get install python-software-properties',
				'sudo apt-get install vim',
				'sudo apt-get install chromium-browser',
				'sudo apt-get install vlc',
			].join('&&'),
			options: {
				stdout: true,
				stderr: true,
			},
		},

		sublime: {
			command: [
				'sudo add-apt-repository ppa:webupd8team/sublime-text-3',
				'sudo apt-get update',
				'sudo apt-get install sublime-text-installer',
				'cd /home/iago/.sublime-preferences',
				'npm install',
				'grunt setup',
			].join('&&'),
			options: {
				stdout: true,
				stderr: true,
			},
		},

		java: {
			command: [
				'sudo add-apt-repository ppa:webupd8team/java',
				'sudo apt-get install oracle-java8-installer',
				'sudo apt-get install oracle-java8-set-default',
			].join('&&'),
			options: {
				stdout: true,
				stderr: true,
			},
		},

		tlp: {
			command: [
				'sudo apt-get remove laptop-mode-tools',
				'sudo add-apt-repository ppa:linrunner/tlp',
				'sudo apt-get update',
				'sudo apt-get install tlp tlp-rdw',
				'sudo tlp start',
			].join('&&'),
			options: {
				stdout: true,
				stderr: true,
			},
		},

		always_show_menu_options: {
			command: 'gsettings set com.canonical.Unity always-show-menus true',
			options: {
				stdout: true,
				stderr: true,
			},
		},

		indicator_multiload: {
			command: 'sudo apt-get install indicator-multiload',
			options: {
				stdout: true,
				stderr: true,
			},
		},

		preload: {
			command: 'sudo apt-get install preload',
			options: {
				stdout: true,
				stderr: true,
			},
		},

		caffeine_idicator: {
			command: [
				'sudo apt-add-repository ppa:caffeine-developers/ppa',
				'sudo apt-get update',
				'sudo apt-get install caffeine',
			].join('&&'),
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

		dev_folders: {
			command: [
				'cd /home/iago',
				'mkdir dev',
				'cd dev',
				'mkdir projects',
				'mkdir repos',
			].join('&&'),
			options: {
				stdout: true,
				stderr: true,
			},
		},

	},

};
