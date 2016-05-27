class Restaurant < ActiveRecord::Base
  belongs_to :restaurant_type
  belongs_to :user
end
