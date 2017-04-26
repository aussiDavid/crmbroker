class Account < ApplicationRecord
  include Defaults

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable, :confirmable, :account_expireable

  has_many :connections
  has_many :crms, through: :connections 

  default :expires_at, Rails.configuration.x.trial_period.days.from_now
end
