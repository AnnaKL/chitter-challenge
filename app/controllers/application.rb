class Chitter < Sinatra::Base
  get '/' do
   @users = User.all
   @peeps = Peep.all
   erb :index
  end




  get '/play' do
    "<form action='/banana' method='post'>
      <input type='password' name='password'>
      <button>submit</button>
    </form>
    "
  end

   get '/banana' do
    p params
    "thanks"
  end


  post '/banana' do
    p params
    "thanks"
  end

  get '/yournumber/:number/:age' do
    # "your number is #{params[:number]}"
  end

  get '/yournumber/:number/:age/p' do
    "your number is #{params[:number]}"
  end


  get '/flights/:to_from/:from_date/:to_date' do
    "searching for flights from #{params[:to_from].split("-")[0]} to #{params[:to_from].split("-")[1]} leaving on #{params[:from_date]} and returning #{params[:to_date]}"
  end

end








