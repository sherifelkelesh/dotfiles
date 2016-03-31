'use strict';

// -- Make Task --------------------------------------------------------------------

/*
 * This make made all directories and
 * depencies that I need to setup my dotfiles
 */

module.exports = {

	shell: {

		backup_folder: {
			command: 'mkdir SET BACKUP PATH',
			options: {
				stdout: true,
				stderr: true,
			},
		},

		custom_folder: {
			command: 'mkdir SET CUSTOM PATH',
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
