class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweeets
  has_one_attached :photo
  has_one_attached :cover_image

  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30 }
  validates :email, presence: true, length: { minimum: 5, maximum: 20 }
  validates_acceptance_of :photo, :cover_image,
                                    content_type: ['image/jpg', 'image/jpeg', 'image/png']


  has_many :opinions, foreign_key: 'author_id', dependent: :destroy
  has_many :followings, class_name: 'Following', foreign_key: 'follower_id'
  has_many :follows, through: :followings, source: :followed
  has_many :inverse_followings, class_name: 'Following', foreign_key: 'followed_id'
  has_many :followers, through: :inverse_followings, source: :follower  


    def who_to_follow
    User.where.not(id: id).where.not(id: follows).order('created_at DESC')
  end

end
