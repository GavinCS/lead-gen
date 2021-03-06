# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# Don't declare `role :all`, it's a meta role
role :app, %w{glowtech}
role :web, %w{glowtech}
role :db,  %w{glowtech}

set :rails_env, "production"
set :user, "deployer"

server 'glowtech', user: "#{fetch(:user)}", roles: %w{web app db}


