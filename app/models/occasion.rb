class Occasion < ActiveRecord::Base
  belongs_to :recipient
  has_many :groups

  accepts_nested_attributes_for :groups
end
