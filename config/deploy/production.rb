server '54.198.139.141', roles: [:app, :web, :db], user: "ubuntu"
set :deploy_to, '/rails/cash_flow_pa'
set :default_env, {
  path: "/home/ubuntu/.rvm/gems/ruby-2.3.4/bin:$PATH"
}
set :branch, ENV["branch"] || "master"
set :ssh_options, {forward_agent: true, keys: "#{ENV['HOME']}/.ssh/projects/cash_flow_pa/cash_flow_pa.pem"}
