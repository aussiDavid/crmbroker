require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'can build' do
    expect( build :account ).not_to be_blank
  end

  it 'can create' do
    expect( create :account ).not_to be_blank
  end

  it 'has 1 crm' do
    account = build :account, :with_crm
    expect( account ).not_to be_blank
    expect( account.crms.length ).to eq 1
  end

  it 'has 2 crms' do
    expect( build(:account, :with_2_crms).crms.length ).to eq 2
  end

  it 'has 3 crms' do
    expect( build(:account, :with_3_crms).crms.length ).to eq 3
  end

  it 'has 2 unique crms' do
    crms = build(:account, :with_2_crms)
      .crms
      .map &:name

    expect(crms.length).to eq crms.uniq.length
  end

  it 'has 3 unique crms' do
    crms = build(:account, :with_3_crms)
      .crms
      .map &:name

    expect(crms.length).to eq crms.uniq.length
  end

  it 'has fails to add 2 the same crms' do
    expect{ create :account, :with_2_same_crms }.to raise_error ActiveRecord::RecordNotUnique
  end
end
