module IEHeaders
  class Railtie < Rails::Railtie
    initializer 'ie_header.insert_middlerware' do |app|
      app.config.middleware.use "IEHeader::IEHeaders"
    end
  end
end