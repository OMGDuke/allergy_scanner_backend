class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  include DeviseTokenAuth::Concerns::User

  has_many :user_ingredients
  has_many :ingredients, through: :user_ingredients

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = DeviseTokenAuth.friendly_token[0,20]
    end
  end
end
