require 'rake'
require 'spec/rake/spectask'

Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_files = FileList['*spec.rb']
  t.spec_opts << '-c --format specdoc'
end

task :default => :spec
