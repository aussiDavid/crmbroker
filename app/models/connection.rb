class Connection < ApplicationRecord
  belongs_to :account
  belongs_to :crm
end
