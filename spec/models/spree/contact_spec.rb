require 'spec_helper'

describe Spree::Contact do

  it "should have a valid email" do
    Spree::Contact.create(email: "test").should_not be_valid
    Spree::Contact.create(email: "").should_not be_valid
    Spree::Contact.create(email: "test@test.com.br").should be_valid
  end
  
  it "should have a valid first name" do
    Spree::Contact.create(first_name: "").should_not be_valid
    Spree::Contact.create(first_name: "John").should_be_valid
  end
  
  it "should have a valid last name" do
    Spree::Contact.create(last_name: "").should_not be_valid
    Spree::Contact.create(last_name: "Anderson").should_be_valid
  end
  
  it "should hava a valid phone" do
    Spree::Contact.create(phone: "").should_not be_valid
  end

end
