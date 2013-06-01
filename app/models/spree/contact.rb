class Spree::Contact < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :message, :mobile_phone, :phone
end
