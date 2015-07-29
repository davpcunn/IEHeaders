#Includes IEHEader::Controller to the ActionController::Base so that new instances of it and subclasses will add the IEHeader to the response

require 'controller.rb'

module IEHeaders
  class Railtie < Rails::Railtie
    initializer "IEHeaders.action_controller" do
    ActiveSupport.on_load(:action_controller) do
      puts "Extending #{self} with IEHeaders::Controller"
      # ActionController::Base gets a method that allows controllers to include the new behavior
      include IEHeaders::Controller # ActiveSupport::Concern
    end
  end
end