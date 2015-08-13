# == Schema Information
#
# Table name: ranks
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  value      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# A tier system for comparing values. The larger value wins.
class Rank < ActiveRecord::Base
  attr_readonly :name
  attr_readonly :value

  validates :name,
            presence: true,
            uniqueness: { case_sensitive: false }
  validates :value,
            presence: true,
            uniqueness: true

  def self.names
    pluck(:name)
  end

  def self.values
    pluck(:value)
  end
end
