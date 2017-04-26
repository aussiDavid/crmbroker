# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

[
  {
    email: 'milanese.david@gmail.com'
  }
]
.concat( 
  100.times.map{ 
    { 
      email: Faker::Internet.email 
    }
  }
)
.uniq{|account| account[:email] }
.map{|attributes| attributes.merge password: 'password', password_confirmation: 'password', confirmed_at: DateTime.now }
.map{|attributes| Account.create! attributes }

[
  {
    name: 'REST'
  },
  {
    name: 'REA'
  },
  {
    name: 'Hubspot'
  }
]
.concat(
  7.times.map{
    {
      name: Faker::App.name
    }
  }
)
.uniq{|crm| crm[:name] }
.map{|attributes| Crm.create! attributes }

Account.find_by_email('milanese.david@gmail.com')
  .crms << Crm.find_by_name('Hubspot')

Account.where
  .not(email: 'milanese.david@gmail.com')
  .map do |account|
    ranges = 2.times
      .map{rand(Crm.count)}
    
    Crm.where(id: Range.new(ranges.min, ranges.max))
      .each{|crm| account.crms << crm }
  end