require 'support/rails/rails_helper'

tags = {
  model: :suit,
  type: :model
}

RSpec.describe Suit, tags do
  it_behaves_like 'a Suit'

  describe '.name' do
    subject(:name) { described_class.name }

    it 'must be implemented by subclasses' do
      expect { name }.to raise_error(
        NotImplementedError,
        'This Suit has no implementation for: .name'
      )
    end
  end
end