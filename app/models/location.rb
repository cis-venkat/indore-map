class Location < ActiveRecord::Base
  has_many :boundaries, dependent: :destroy
end
