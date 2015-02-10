get '/shelters/:id' do
  @shelter = Shelter.find(params[:id])
  @animals = @shelter.animals
  @cats = @animals.where(species: "cat")
  @dogs = @animals.where(species: "dog")
  erb :"shelters/profile"
end
