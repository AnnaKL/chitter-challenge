class Chitter < Sinatra::Base
  get '/' do
   @users = User.all
   @peeps = Peep.all
   erb :index
  end






end








