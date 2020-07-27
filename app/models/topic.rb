  
class Topic < ApplicationRecord
  has_many :links
  validates_presence_of :name
  validates_uniqueness_of :name
end