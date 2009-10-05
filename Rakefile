require 'rake'

desc "Runs all Euler programs."
task :default do
  puts 'All problems'
  Dir[File.join(File.dirname(__FILE__), '/lib/problem/*.rb')].each do |file|
    puts
    Rake::Task['problem'].invoke File.basename(file, '.rb')
  end
end

desc "Runs the specified problem."
task :problem, [:num] do |t, args|
  args.with_defaults(:num => ENV['num'])
  puts "Problem #{args.num}"  
  require File.join(File.dirname(__FILE__), "/lib/problem/#{args.num}.rb") 
end



