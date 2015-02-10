class Adopter < ActiveRecord::Base
  has_many :adoptions
  has_many :favorites
  has_many :animals, through: :adoptions

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end
end
