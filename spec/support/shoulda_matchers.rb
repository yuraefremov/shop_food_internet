Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    
    with.library :rails
    with.library :active_record
    with.library :active_model
    with.library :action_controller
  end
end