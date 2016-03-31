'use strict';
let config = require('./config.js');

// -- Gruntfile --------------------------------------------------------------------

module.exports = (grunt) => {

	grunt.initConfig({

		config: config,

	});

	require('load-grunt-tasks')(grunt);

	grunt.task.registerTask('banner', () => {
		console.log(grunt.file.read('templates/banner'));
	});

};
