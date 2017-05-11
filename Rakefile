require 'rake'
require 'parallel'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:single) do |task|
  ENV['CONFIG_NAME'] ||= "single"
  task.cucumber_opts = ['--format=pretty', 'features/single.feature']
end

task :default => :single

Cucumber::Rake::Task.new(:account_f) do |task|
  ENV['CONFIG_NAME'] ||= "account_f"
  task.cucumber_opts = ['--format=pretty', 'features/account_f.feature']
end

task :default => :account_f

Cucumber::Rake::Task.new(:account_j) do |task|
  ENV['CONFIG_NAME'] ||= "account_j"
  task.cucumber_opts = ['--format=pretty', 'features/account_j.feature']
end

task :default => :account_j

Cucumber::Rake::Task.new(:local) do |task|
  task.cucumber_opts = ['--format=pretty', 'features/local.feature', 'CONFIG_NAME=local']
end

task :parallel do |t, args|
  @num_parallel = 4

  Parallel.map([*1..@num_parallel], :in_processes => @num_parallel) do |task_id|
    ENV["TASK_ID"] = (task_id - 1).to_s
    ENV['name'] = "parallel_test"
    ENV['CONFIG_NAME'] = "parallel"

    Rake::Task["single"].invoke
    Rake::Task["single"].reenable
  end
end

task :test do |t, args|
  Rake::Task["single"].invoke
  Rake::Task["single"].reenable
  Rake::Task["account"].invoke
  Rake::Task["account"].reenable
  Rake::Task["local"].invoke
  Rake::Task["parallel"].invoke
end
