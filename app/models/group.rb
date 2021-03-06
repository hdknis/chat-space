class Group < ApplicationRecord
  has_many :users, through: :members
  has_many :members
  accepts_nested_attributes_for :members

  validates :name, presence: true
end
