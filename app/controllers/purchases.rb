get '/purchases/new/:id' do
  @shirt = Shirt.find(params[:id].to_i)
  if request.xhr?
    erb :'purchases/new', layout: false
  else
    erb :'purchases/new'
  end
end

post '/purchases/:id' do
  @purchase = current_user.purchases.new(shirt_id: Shirt.find(params[:id]).id)

  if @purchase.save
    redirect "/purchases/show?user=#{current_user.id}"
  else
    @purchase = ["you fucked up"]
    erb :"/purchases/new/#{params[:id].to_i}"
  end
end

get '/purchases/show' do
  @purchase = current_user.purchases.last
  erb :"purchases/show"
end
