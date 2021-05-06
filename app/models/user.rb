class User < ApplicationRecord
  has_many :user_pokemons
  has_many :pokemons, through: :user_pokemons
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true, length: { maximum: 20}
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

end
