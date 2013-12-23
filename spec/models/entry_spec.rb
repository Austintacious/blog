require 'spec_helper'

describe Entry do
  let(:blanks) {['', nil]}
  it {should have_valid(:title).when('whatever you want, really')}
  it {should_not have_valid(:title).when(*blanks)}
  it {should have_valid(:description).when('again, this can kinda be whatever')}
  it {should_not have_valid(:description).when(*blanks)}
  it {should belong_to :author}
  it {should have_many :categories}
  it {should have_many :comments}
end
