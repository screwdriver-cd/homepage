require "rubygems"
require "tmpdir"

require "bundler/setup"

def run(command)
  puts '$ ' + command
  result = system(command)
  raise "Command Failed with #{$CHILD_STATUS}" if result.nil? || result == false
end

task :default => [:serve]

desc "Generate documentation"
task :build do
  sh "bundle exec jekyll build"
end

desc "Test configuration"
task :doctor do
  sh "bundle exec jekyll doctor"
end

desc "Run a local documentation server"
task :serve do
  sh "bundle exec jekyll serve"
end
