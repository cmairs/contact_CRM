class Contact < ActiveRecord::Base
  attr_accessible :email, :firstname, :phonenumber, :surname
end
