module.exports = (grunt) ->
  grunt.initConfig(
    pkg: grunt.file.readJSON('package.json')
    srcDir: "_site"
    destDir: "cleaned"

    mkdir:
      all:
        options:
          create: ["<%= destDir %>"]

    'html-prettyprinter':
      expansion:
        src: [
          "<%= srcDir %>/*.html",
#          "<%= srcDir %>/getting-started.html",
#          "<%= srcDir %>/about.html"
        ]
        dest: "<%= destDir %>/"
  )

  grunt.loadNpmTasks('grunt-mkdir')
  grunt.loadNpmTasks('grunt-html-prettyprinter')

  grunt.registerTask('default', ['mkdir', 'html-prettyprinter'])
