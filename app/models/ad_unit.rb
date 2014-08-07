class AdUnit < ActiveRecord::Base
  belongs_to :asset_group
  belongs_to :asset
  belongs_to :cta
end
