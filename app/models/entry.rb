class Entry < ActiveRecord::Base
  validates_presence_of :title, :description
  belongs_to :author
  has_many :comments
  has_many :categories
end
