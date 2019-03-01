namespace :middleman do
  task :build do
    on release_roles(fetch(:middleman_roles)) do
      within release_path do
        with fetch(:middleman_build_environment_variables) do
          command = fetch(:middleman_build_command)
          execute *command
        end
      end
    end
  end
end

after "deploy:updated", "middleman:build"

namespace :load do
  task :defaults do
    set :middleman_build_command,               ->{ [:bundle, :exec, :middleman, :build] }
    set :middleman_build_environment_variables, ->{ {} }
    set :middleman_roles,                       ->{ :all }
  end
end
