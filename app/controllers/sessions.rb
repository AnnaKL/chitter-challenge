class Chitter < Sinatra::Base


  get '/sessions/new' do
    erb :"sessions/new"
  end

  post '/sessions' do
    email, password = params[:email], params[:password]
    user = User.authenticate(email, password)
     if session[:user_id] = user.id
       redirect to('/')
     else
       flash.now[:errors] = ["The email or password are incorrect"]
       erb :"sessions/new"
     end
  end

  delete '/sessions' do
    session[:user_id] = nil
    redirect to('/')
  end
end