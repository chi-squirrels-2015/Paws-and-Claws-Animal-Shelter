class Shelter < ActiveRecord::Base
  has_many :animals
  has_many :adoptions
  has_many :adopters, through: :adoptions
end
