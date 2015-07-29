#IE headers controller module which will extend the ActionController::Base

module IEHeaders
  module Controller
    extend ActiveSupport::Concern

    def self.included(base) #adds the afterfilter when included with ActionController::Base
      puts "Controller was included"
      base.send(:after_filter, :set_ie_compatibility_header)
    end

    def initialize #initializes the class and stores the subclass as an instance variable
      super
      #self references the instance of the UsersController class
      @model_class = self.class
      puts @model_class
    end

    def set_ie_compatibility_header #sets the header on the response so that ie doesn't run in compatability mode
      puts "Setting ie compatability header"
      @model_class.response.headers['X-UA-Compatible'] = 'IE=edge'
    end
  end
end