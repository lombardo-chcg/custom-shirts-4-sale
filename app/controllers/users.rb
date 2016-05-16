get '/users/new' do
  erb :'sessions/register'
end

post '/users/register' do
  @user = User.new(params[:user])
  
  if @user.save
    redirect '/login'
  else
    @errors = ["you fucked up"]
    erb :'user/new'
  end
end

get '/users/:id' do
  @user = current_user
  erb :'users/show'
end