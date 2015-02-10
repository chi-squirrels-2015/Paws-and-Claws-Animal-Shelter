get '/adopters/new' do

  erb :"adopters/new"
end

post "/adopters" do
  adopter = Adopter.new
  adopter.email = params[:email]
  adopter.password = params[:password]

  if adopter.save
    session[:id] = adopter.id
    redirect '/adopters/profile'
  else
    redirect '/adopters/new'
  end

end

get '/adopters/profile' do

  erb :"adopters/profile"
end
