class Occasion < ActiveRecord::Base
  belongs_to :recipient
  has_many :groups
end
