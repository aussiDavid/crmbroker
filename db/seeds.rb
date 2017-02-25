# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

accounts = [
  {
    email: 'alice@mg.davidmilanese.com'
  },
  {
    email: 'pjackson1@chron.com'
  },
  {
    email: 'jlane2@noaa.gov'
  },
  {
    email: 'rmurray3@ca.gov'
  },
  {
    email: 'dwebb4@furl.net'
  },
  {
    email: 'doliver5@indiatimes.com'
  },
  {
    email: 'aedwards6@netvibes.com'
  },
  {
    email: 'rwood7@yolasite.com'
  },
  {
    email: 'aharper8@elegantthemes.com'
  },
  {
    email: 'rjacobs9@surveymonkey.com'
  },
  {
    email: 'gturnera@1und1.de'
  },
  {
    email: 'jmoralesb@va.gov'
  },
  {
    email: 'ppricec@yolasite.com'
  },
  {
    email: 'creynoldsd@zdnet.com'
  },
  {
    email: 'dweavere@artisteer.com'
  },
  {
    email: 'sbanksf@desdev.cn'
  },
  {
    email: 'fevansg@ebay.com'
  },
  {
    email: 'jsimmonsh@seattletimes.com'
  },
  {
    email: 'rrusselli@samsung.com'
  },
  {
    email: 'dfullerj@si.edu'
 
}
]
.map{|attributes| Account.create! attributes }

crms = [
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
.map{|attributes| Crm.create! attributes }

accounts[0].crms << crms[2]
accounts[1].crms << crms[0,1]