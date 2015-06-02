require 'simplecov'
SimpleCov.start

require 'factory_girl'
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

FactoryGirl.definition_file_paths = [File.expand_path('../factories', __FILE__)]
FactoryGirl.find_definitions

require 'finder'
require 'fileutils'
RSpec.configure do |config|
  config.after(:all) do
    FileUtils.rm_rf('./db')
  end
end
