get '/shirts' do
  erb :"shirts/index"
end

get '/shirts/new' do
  erb :'shirts/new'
end

post '/shirts' do
  @shirt = current_user.designed_shirts.new(content: params[:content], price: 19.99)
  
  if @shirt.save
    redirect "/shirts/#{@shirt.id}"
  else
    @errors = ['something went wrong. please try again.']
    erb :"/shirts/new"
  end
end

get '/shirts/:id' do
  @shirt = Shirt.find(params[:id].to_i)
  erb :"shirts/show"
end