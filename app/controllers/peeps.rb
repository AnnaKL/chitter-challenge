class Chitter < Sinatra::Base
  get '/peeps/new' do
    erb :'peeps/new'
  end

  post '/peeps' do
    @message = params[:message]
    @peep = Peep.create(message: @message, user_id: current_user.id)
    redirect to('/')
  end

  post '/peeps/createreply' do
    @initialpeep_id = params['initialpeep_id']
    erb :'peeps/reply'
  end

  post '/peeps/makereply' do
    @initial = Peep.get(params['initialpeep_id'])
    p @initial
    @peep = Peep.create(message: "@#{@initial.user.username} " + params['message'], user_id: current_user.id)
    redirect to ('/')
  end
end