class Category < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates :name, :format => {:with => /\A[a-zA-Z\s]+\z/}
  has_many :entries
end
