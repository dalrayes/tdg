class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :recipients, foreign_key: :giver_id
  has_many :occasions, through: :recipients
  has_many :user_groups, foreign_key: :member_id
  has_many :groups, through: :user_groups
end
