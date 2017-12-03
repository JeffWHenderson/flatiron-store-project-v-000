class Category < ActiveRecord::Base
  #has_many :line_items
  has_many :items #, through: :line_items
  #has many line_ties built through instance method?
end
