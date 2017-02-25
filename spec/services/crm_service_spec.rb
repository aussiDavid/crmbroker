require "rails_helper"

RSpec.describe CrmService do
  let(:attributes) { 
    {
      crm: build(:crm, :hubspot),
      name: 'David Test',
      phone: '123 345 567',
      email: 'test@example.com',
      enquiry: 'What times are you free?'
    }
  }

  it 'can perform' do
    expect( CrmService.perform attributes ).to_not be_blank
  end
end
