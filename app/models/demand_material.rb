class DemandMaterial < ActiveRecord::Base
  belongs_to :pot
  belongs_to :material
end
