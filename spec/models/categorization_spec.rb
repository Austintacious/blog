require 'spec_helper'

describe Categorization do
  let(:invalid_ids) {['', nil, "abc", "12abc34", "ab123cd", -100, 0]}
  it {should have_valid(:category_id).when(1)}
  it {should_not have_valid(:category_id).when(*invalid_ids)}
  it {should have_valid(:entry_id).when(1)}
  it {should_not have_valid(:entry_id).when(*invalid_ids)}
  it {should belong_to :category}
  it {should belong_to :entry}
end
