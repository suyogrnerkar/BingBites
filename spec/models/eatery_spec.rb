require 'rails_helper'
require 'spec_helper'

RSpec.describe Eatery, type: :model do
  subject { build(:eatery) }

  it "has a valid factory" do
    expect(subject).to be_valid
  end

  it "is not valid without valid attributes" do
    subject.name = nil
    subject.address = nil
    subject.lat = nil
    subject.long = nil
    expect(subject).to_not be_valid
  end

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do 
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a address" do
    subject.address = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a lat" do
    subject.lat = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a long" do
    subject.long = nil
    expect(subject).to_not be_valid
  end

  it "is valid on create" do
    subject.save!
    last_eatery = Eatery.last
    expect(subject).to eq last_eatery
  end

  describe ".search" do
    context 'Searching for eateries' do
      subject { create_list(:eatery, 5)}
      let(:eatery) { Eatery.search(subject.last.name) }
      it 'returns a valid search' do  
        expect(subject.last.name).to eq eatery.first.name
      end
    end
  end

  describe ".filters" do
    context 'Filters for eateries' do
      subject { create_list(:eatery, 5)}
      let(:eatery) { Eatery.filter("MEXICAN") }
      before do
        Category.create(name: 'MEXICAN')
        subject.first.category = Category.first
        subject.first.save!
      end

      it 'returns a valid search' do  
        debugger
        expect(subject.last.name).to eq eatery..name
      end
    end
  end
  
end


 






