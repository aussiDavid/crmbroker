require "rails_helper"

RSpec.describe EmailProcessor do

  let(:email) { build :email, :realestate }
  let(:email_processor) { EmailProcessor.new(email) }

  it 'can initialise' do
    expect( email_processor ).to_not be_nil
  end

  it 'can process with no CRMs' do
    create :account, email: email.from
    
    expect( email_processor.process.length ).to eq 0
  end
  
  it 'can process with 1 CRM' do
    create :account, :with_crm, email: email.from
    
    expect( email_processor.process.length ).to eq 1
  end
    
  it 'can process with 3 CRMs' do
    create :account, :with_3_crms, email: email.from
    
    expect( email_processor.process.length ).to eq 3
  end
  
  it 'does not processes an unregistered account' do
    Account.where(email: email.from).destroy_all
    expect( email_processor.process ).to be_nil
  end
end
