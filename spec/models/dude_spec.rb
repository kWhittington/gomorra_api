# == Schema Information
#
# Table name: dudes
#
#  id              :integer          not null, primary key
#  name            :string
#  bullet_type     :string
#  bullet_quantity :integer
#  influence       :integer
#  control         :integer
#  upkeep          :integer
#  cost            :integer
#  keywords        :string
#  text            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Dude, tags do
  it 'has readonly bullet_type' do
    is_expected.to have_readonly_attribute(:bullet_type)
  end

  it 'has readonly bullets' do
    is_expected.to have_readonly_attribute(:bullets)
  end

  it 'has readonly control' do
    is_expected.to have_readonly_attribute(:control)
  end

  it 'has readonly influence' do
    is_expected.to have_readonly_attribute(:influence)
  end

  it 'has readonly upkeep' do
    is_expected.to have_readonly_attribute(:upkeep)
  end
end
