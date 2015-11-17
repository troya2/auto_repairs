class Customer < ActiveRecord::Base
  belongs_to :model
  belongs_to :shop
end
