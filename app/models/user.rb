class User < ActiveRecord::Base
  has_many :beer_profiles
  has_many :followings
  has_many :friends, :through => :followings, :source => 'followed'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
