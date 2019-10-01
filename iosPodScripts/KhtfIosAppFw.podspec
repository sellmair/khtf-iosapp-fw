Pod::Spec.new do |s|
  s.name = 'KhtfIosAppFw'
  s.version = 'VERSION'
  s.authors = {
    'Konstantin Petrukhnov' => 'konstantin.petrukhnov@ekahau.com',
    'Jarno Leppänen' => 'jarno.leppanen@ekahau.com'
  }
  s.license = 'MIT'
  s.homepage = 'https://github.com/Ekahau/khtf-iosapp-fw'
  s.summary = 'khtf ios app fw example'
  s.platform = :ios
  s.ios.deployment_target = '11.0'
  s.ios.vendored_frameworks = 'KhtfIosAppFw.framework'
  s.source = {
    :git => 'https://github.com/Ekahau/khtf-iosapp-fw-framework.git',
    :tag => s.version
  }
  s.ios.resource_bundle = { 'KhtfIosAppFw' => 'resources/*' }
end
