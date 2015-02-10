class Animal < ActiveRecord::Base
  belongs_to :shelter
  has_one :adoption
  has_one :adopter, through: :adoption
  has_many :favorites
end
