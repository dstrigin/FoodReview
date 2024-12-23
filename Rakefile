# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"
Rails.application.load_tasks

desc "Build Docker container with custom tag"
task :build do
  puts "Building Docker container"
  sh "docker build -t food-review ."
  puts "Docker container built successfully"
end

desc "Build Docker container with custom tag"
task :run do
  sh "docker run --env-file .env -d -p 3000:3000 --name food-review food-review"
end

desc "Stop and remove Docker container"
task :down do
  sh "docker stop food-review"
  sh "docker rm food-review"
end
