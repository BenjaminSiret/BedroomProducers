class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :tracks
  has_many :upvotes
  has_many :messages
  has_one_attached :photo

  validates :username, presence: true, uniqueness: true
  validates :email, format: { with: /\A.*@.*\.com\z/ },prensece: true ,uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }
  validates :status, presence: true
  validates :description, presence: true
  validates :avatar, presence: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
