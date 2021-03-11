class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  validates :name, presence: true, length: { minimum: 3, maximum: 30 }
  validates :email, presence: true, length: { minimum: 5, maximum: 20 }
  
  has_one_attached :photo
  validates_acceptance_of :photo, content_type: %r{\Aimage/.*\z}

  has_one_attached :cover_image
  validates_acceptance_of :cover_image, content_type: %r{\Aimage/.*\z}


  has_many :opinions, foreign_key: 'author_id', dependent: :destroy, class_name: 'Opinion'
  has_many :followings, foreign_key: 'follower_id', dependent: :destroy
  has_many :follows, through: :followings, source: :followed
  has_many :inverse_followings, class_name: 'Following', foreign_key: 'followed_id'
  has_many :followers, through: :inverse_followings
  has_many :likes, dependent: :destroy


  def not_following
    User.where.not(id: follows).where.not(id: id).order('created_at DESC')
  end

end
