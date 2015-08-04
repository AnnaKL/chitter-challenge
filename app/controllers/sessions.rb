class Chitter < Sinatra::Base
  get '/sessions/new' do
    erb :"sessions/new"
  end

  post '/sessions' do
    email, password = params[:email], params[:password]
    user = User.authenticate(email, password)
     if user
       session[:user_id] = user.id
       flash[:notice] = "You are now signed in"
       redirect to('/')
     else
       flash.now[:errors] = ["The email or password are incorrect"]
       erb :"sessions/new"
     end
  end

  delete '/sessions' do
    flash[:notice] = 'Logged out'
    session[:user_id] = nil
    redirect to('/')
  end
end