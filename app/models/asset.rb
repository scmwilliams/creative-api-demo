class Asset < ActiveRecord::Base
  belongs_to :asset_group
  belongs_to :job
end
