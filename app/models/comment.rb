class Comment < ActiveRecord::Base
  validates_presence_of :body
  validates_numericality_of :author_id, :greater_than_or_equal_to => 1
  validates_numericality_of :entry_id, :greater_than_or_equal_to => 1
  belongs_to :author
  belongs_to :entry
end
