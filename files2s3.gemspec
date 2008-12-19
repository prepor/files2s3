# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "files2s3"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrew Rudenko"]
  s.date = "2008-12-19"
  s.default_executable = %q{files2s3}
  s.description = ""
  s.email = ["ceo@prepor.ru"]
  s.executables = ["files2s3"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "bin/files2s3", "lib/files2s3.rb", "script/console", "script/destroy", "script/generate", "test/test_files2s3.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.3.1"
  s.summary = ""
  s.test_files = ["test/test_files2s3.rb", "test/test_helper.rb"]

  s.add_dependency('right_aws', ["> 0.0.0"])

end
