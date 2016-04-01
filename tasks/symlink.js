'use strict';

// -- Symlink Task --------------------------------------------------------------------

module.exports = (grunt) => {

	grunt.config('symlink', {
		aliases: {
			src: '<%= config.test.path_system %>',
			dest: '<%= config.zsh.path_aliases %>',
		},

		// gitconfig: {
		// 	src: '',
		// 	dest: '',
		// },

		// gitignore: {
		// 	src: '',
		// 	dest: '',
		// },

		// zsh: {
		// 	src: '',
		// 	dest: '',
		// },
	});

	grunt.registerTask('symlink', ['symlink']);

};
