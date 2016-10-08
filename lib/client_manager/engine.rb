module ClientManager
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    require 'growlyflash'
    require 'font-awesome-rails'
    require 'bcrypt'
    require 'jwt'

    isolate_namespace ClientManager
  end

  class << self
    mattr_accessor :token_secret
    self.token_secret = nil
  end

  def self.setup(&block)
    yield self
  end

end
