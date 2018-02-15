# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

abstract_target 'Shows' do
    
    use_frameworks!
    
    pod 'Alamofire', '~> 4.5'
    pod 'ObjectMapper', '~> 3.1'
    pod 'AlamofireObjectMapper', '~> 5.0'
    pod 'CocoaLumberjack/Swift'
    pod 'BantuDicoAlamofireApiClient', :git=> 'https://github.com/rokridi/BantuDicoalamofireApiClient.git', :branch => 'develop'
    
    target 'Bantu dico' do
    end
    
    target 'Bantu dico Dev' do
    end
end

target 'Bantu dicoTests' do
    inherit! :search_paths
end

target 'Bantu dicoUITests' do
    inherit! :search_paths
end
