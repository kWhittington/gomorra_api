# == Schema Information
#
# Table name: deeds
#
#  id         :integer          not null, primary key
#  name       :string
#  cost       :integer
#  production :integer
#  control    :integer
#  keywords   :string
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'support/rails/rails_helper'

tags = {
  type: :model
}

RSpec.describe Deed, tags do
  it 'has readonly control' do
    is_expected.to have_readonly_attribute(:control)
  end

  it 'has readonly cost' do
    is_expected.to have_readonly_attribute(:cost)
  end

  it 'has readonly keywords' do
    is_expected.to have_readonly_attribute(:keywords)
  end

  it 'has readonly name' do
    is_expected.to have_readonly_attribute(:name)
  end

  it 'has readonly production' do
    is_expected.to have_readonly_attribute(:production)
  end

  it 'has readonly text' do
    is_expected.to have_readonly_attribute(:text)
  end
end