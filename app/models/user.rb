class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tweets
  serialize :following, Array
  
  validates :username, presence: true, uniqueness: true
  
  mount_uploader :avatar, AvatarUploader
  
end
