Pod::Spec.new do |s|
  s.name = "SubComponentB"
  s.version = "0.1.0"
  s.summary = "A short description of SubComponentB."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"sysuleiw"=>"sysuleiw@163.com"}
  s.homepage = "https://github.com/sysuleiw/SubComponentB"
  s.description = "TODO: Add long description of the pod here."
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/SubComponentB.framework'
end
