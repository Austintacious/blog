require 'spec_helper'

describe Category do
  let(:invalids) {['', nil, 1234, "12abc34", "ab123cd"]}

  it {should have_valid(:name).when("Blah")}
  it {should_not have_valid(:name).when(*invalids)}

  it 'should be unique' do
    category1 = FactoryGirl.build(:category)
    category2 = FactoryGirl.build(:category)
    expect(category1.save).to be_true
    expect(category2.save).to be_false
  end

  it {should have_many :entries}  
end
