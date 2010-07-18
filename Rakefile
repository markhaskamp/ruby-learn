require 'rake'
require 'spec/rake/spectask'

task :default => :spec

desc "run spec for specified file which can be full file path: test/test_arrays.spec.rb or just 'arrays'"
task :one_file, [:test_string] do |t, args|

     if (File.exist? args.test_string)
       test_file = args.test_string
     else
       test_file = "test/test_#{args.test_string}.spec.rb"

       unless File.exist? test_file
         puts "file '#{test_file}' doesn't exist." 
         exit
       end
     end

     sh "spec -c -f specdoc #{test_file}"
end

desc "Run specs. default"
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_files = FileList['test/*spec.rb']
  t.spec_opts << '-c --format specdoc'
end



