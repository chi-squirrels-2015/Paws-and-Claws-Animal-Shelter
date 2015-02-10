get "/" do
  @shelters = Shelter.all
  erb :index
end

get '/login' do
  "Hello World"
  erb :login
end

get '/logout' do
  session.delete(:id)
  redirect "/"
end

post "/login" do
  adopter = Adopter.find_by(email: params[:email])

  if adopter && adopter.password == params[:password]
    session[:id] = adopter.id
    redirect 'users/profile'
  else
    @error = "you dun goofed"
    redirect '/login'
  end
end

