class Pod::Spec
  @@git_plugins_url = 'git@boohee-apple:/opt/git/Plugins'

  def dependency_git(name, other={})
    other[:git] = "#{@@git_plugins_url}/#{name}.git"
    self.dependency name, other
  end
end

Pod::Spec.new do |s|
  s.name         = "MYFrameworkDebuger"
  s.version      = "1.0"
  s.summary      = "a based Debug framework based on MYFramework."
  s.homepage     = "http://EXAMPLE/MYFrameworkDebuger"
  s.license      = 'MIT'
  s.author       = { "Whirlwind" => "james@boohee.com" }
  s.source       = { :git => "git@boohee-apple:/opt/git/Plugins/MYFrameworkDebuger.git", :tag=>'v1.0'}
  s.platform     = :ios
  # s.resources    = "resources/**/*.png"
  s.frameworks   = 'UIKit', 'Foundation', 'QuartzCore'

  s.prefix_header_file = 'MYFrameworkDebuger/Shared/MYFrameworkDebuger-Prefix.pch'
  s.source_files = 'MYFrameworkDebuger/Shared/**/*.{h,m,mm}'

  s.xcconfig     = {'GCC_PREPROCESSOR_DEFINITIONS' => 'USE_MYDebuger'}
  s.dependency 'MYFramework'
  s.dependency 'Reachability' #, '~> 2.0', '>= 2.0.4'
  s.dependency 'NSLogger'
end
