require 'rails_helper'

RSpec.describe Eatery, type: :model do
  it "is valid with valid attributes" do
      expect(Eatery.new).to be_valid
  end
  it "is not valid without a name" do
      expect(Eatery.new(name: 'BingB')).to be_valid
  end

  it "is not valid without a email" do
      expect(Eatery.new(address: 'anything address')).to be_valid
  end
end
