require 'spec_helper'

describe Comment do
  let(:blanks) {['', nil]}
  let(:invalid_ids) {['', nil, "abc", "12abc34", "ab123cd", -100]}
  it {should have_valid(:body).when('this can be whatever you want, really')}
  it {should_not have_valid(:body).when(*blanks)}
  it {should have_valid(:author_id).when(1)}
  it {should_not have_valid(:author_id).when(*invalid_ids)}
  it {should have_valid(:entry_id).when(1)}
  it {should_not have_valid(:entry_id).when(*invalid_ids)}
  it {should belong_to :author}
  it {should belong_to :entry}
end
