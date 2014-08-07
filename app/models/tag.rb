class Tag < ActiveRecord::Base
  belongs_to :insertion_order
  belongs_to :ad_unit
  belongs_to :partner
end
