require 'rails'
require 'ember/auth/response/json/source'
require 'ember/auth/response/json/rails/version'
require 'ember/auth/response/json/rails/engine'

module Ember
  module Auth
    module Response
      module Json
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.response.json.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Response::Json::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
