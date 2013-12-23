class Categorization < ActiveRecord::Base
  validates_presence_of :category_id, :entry_id
  validates_numericality_of :category_id, :greater_than_or_equal_to => 1
  validates_numericality_of :entry_id, :greater_than_or_equal_to => 1
  belongs_to :entry
  belongs_to :category
end
