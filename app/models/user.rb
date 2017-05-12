class User < ApplicationRecord
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
      if user.name == "Mario See" or user.name =="Sarah Xu" or user.name =="Kate Smith"
        user.admin = true
      else
        user.admin = false
      end 
    end
  end

  has_many :favorite_insides
  has_many :favorites, through: :favorite_insides, source: :inside
end
