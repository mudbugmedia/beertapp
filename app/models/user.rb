class User < ActiveRecord::Base
  has_many :beer_profiles
  has_many :followings
  has_many :friends, :through => :followings, :source => 'followed'

  has_many :followeds, :class_name => 'Following', :foreign_key => 'followed_id'
  has_many :followers, :through => :followeds, :source => :user

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
