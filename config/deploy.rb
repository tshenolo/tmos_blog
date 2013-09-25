require 'capistrano/ext/multistage'

set :application, "tmos_blog"

set :scm, :git
set :repository, "https://github.com/tshenolo/tmos_blog.git"
set :scm_passphrase, ""


set :user, "tandt1"
set :use_sudo, false

set :stages, ["staging", "production"]
set :default_stage, "staging"

task :sudo_test do
  run "#{try_sudo} whoami"
end








