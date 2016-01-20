class User < ActiveRecord::Base
	has_many :recipients, foreign_key: :giver_id
  has_many :occasions, through: :recipients

end
