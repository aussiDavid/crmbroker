require "rails_helper"

RSpec.describe EmailerService do

  context 'with a realestate.com.au email' do
    let(:email) { build(:email, :realestate) }
    let(:emailer) { EmailerService.perform email }

    it 'extracts the name' do
      expect( emailer["Name"] ).to eq email.name
    end

    it 'extracts the contact number' do
      expect( emailer["Phone"] ).to eq email.contact
    end

    it 'extracts the enqiuery' do
      expect( emailer["I would like to"] ).to eq email.enquiry
    end
  end 

  context 'with a domain.com.au email' do
    let(:emailer) { EmailerService.perform build(:email, :domain) }
    
    it 'returns nothing yet' do
      expect( emailer ).to be_nil
    end
  end 

  context 'with an invalid email' do
    let(:emailer) { EmailerService.perform build(:email) }
    
    it 'returns nil' do
      expect( emailer ).to be_nil
    end
  end
end
