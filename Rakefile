require "rubygems"
require "tmpdir"

require "bundler/setup"

GITHUB_REPONAME = "screwdriver-cd/homepage"

def run(command)
  puts '$ ' + command
  result = system('time ' + command)
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

desc "Generate and publish documentation to gh-pages"
task :publish => [:build] do
  Dir.mktmpdir do |tmp|
    cp_r "_site/.", tmp

    pwd = Dir.pwd
    Dir.chdir tmp

    run("git init")
    run("git add .")
    message = "Site updated at #{Time.now.utc}"
    run("git commit -m #{message.inspect}")
    run("git remote add origin git@github.com:#{GITHUB_REPONAME}.git")
    run("git push origin master:refs/heads/gh-pages --force")

    Dir.chdir pwd
  end
end
