class Crm < ApplicationRecord
  has_many :connections
  has_many :accounts, through: :connections 
end
