class Author < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :first_name, scope: :last_name
  validates :first_name, :last_name, :format => { :with =>  /\A[a-zA-Z\s]+\z/ }
  validates :email, :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  has_many :comments
  has_many :entries
end
