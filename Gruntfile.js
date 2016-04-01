'use strict';

// -- Gruntfile --------------------------------------------------------------------

module.exports = (grunt) => {

	grunt.initConfig({
		config: require('./config.js'),
	});

	grunt.loadTasks('tasks');

	require('load-grunt-tasks')(grunt);

	grunt.registerTask('banner', () => {
		console.log(grunt.file.read('templates/banner'));
	});

	grunt.registerTask('default', ['symlink']);

};
