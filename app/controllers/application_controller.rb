class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  class Item < ActiveRecord::Base
    belongs_to :category
    has_many :line_items

    def self.available_items
      self.where.not(inventory: 0)
    end
  end
end
