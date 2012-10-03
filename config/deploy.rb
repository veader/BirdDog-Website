set :application,   'birddog'
set :scm,           'git'
set :repository,    "git@github.com:veader/BirdDog-Website.git"
set :deploy_to,     "/var/www/#{application}"
set :user,          'web'
set :keep_releases, 3
set :use_sudo,      false
set :deploy_via,    :copy
set :port,          22

role :web, "birddogapp.com"

deploy.task :restart, :roles => :web do
  # DO NOTHING
end

deploy.task :finalize_update, :except => { :no_release => true } do
  # DO NOTHING
end

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end