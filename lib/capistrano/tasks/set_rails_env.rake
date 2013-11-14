namespace :deploy do
  task :set_rails_env do
    set :rails_env, (fetch(:rails_env) || fetch(:stage))
    set :rails_path, release_path.join(fetch(:rails_folder, ''))
  end
end
