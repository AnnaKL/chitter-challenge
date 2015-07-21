require 'sinatra/base'
require 'data_mapper'
require 'sinatra/flash'
require 'sinatra/partial'

require_relative 'models/user'
require_relative 'models/peep'
require_relative 'helpers/application'


require_relative 'controllers/application'
require_relative 'controllers/peeps'
require_relative 'controllers/sessions'
require_relative 'controllers/users'
require_relative 'data_mapper_setup'

class Chitter < Sinatra::Base
  include Helpers
  enable :sessions
  set :session_secret, 'my secret'
  set :views, File.dirname(__FILE__) + '/views'
  use Rack::MethodOverride
  register Sinatra::Partial
  register Sinatra::Flash
  set :partial_template_engine, :erb
end