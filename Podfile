# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

def shared_pods
  pod 'Firebase'
  pod 'Firebase/Core'
  pod 'Firebase/Auth'
  pod 'Firebase/Database'
  pod 'Firebase/Storage'
  pod 'Firebase/RemoteConfig'

end

workspace 'BodyLife4Mobile.xcworkspace'

target 'Develop' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  project 'Application/Application.xcodeproj'

  # Pods for Develop
 # shared_pods

end

target 'Production' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  project 'Application/Application.xcodeproj'
  # Pods for Production
  #shared_pods

end


target 'FirebaseManager' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  project 'FirebaseManager/FirebaseManager.xcodeproj'
  # Pods for Production
  shared_pods

end
