require 'rake'

desc "Runs all Euler programs."
task :default do
  puts 'All problems'
  Dir[File.join(File.dirname(__FILE__), '/lib/problem/problem*.rb')].each do |file|
    puts
    Rake::Task['problem'].invoke File.basename(file, '.rb').slice(7)
  end
end

desc "Runs the specified problem."
task :problem, [:num] do |t, args|
  elapsed = stopwatch do
    args.with_defaults(:num => ENV['num'])
    puts "Problem #{args.num}"
    require File.join(File.dirname(__FILE__), "/lib/problem/problem#{args.num}.rb")
    problem = Kernel.const_get("Problem#{args.num}").new
    puts problem.description
    puts
    puts "Answer: #{problem.get_answer}"
    puts
  end
  puts "Processed in #{elapsed}s."
end

def stopwatch
  start = Time.now
  yield
  Time.now - start
end