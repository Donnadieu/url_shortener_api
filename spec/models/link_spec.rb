require 'rails_helper'

RSpec.describe Link, type: :model do
  # pointless tests but lets make sure things "work" :)
  describe 'associations' do
    context 'has_many' do
      let(:link) { Link.create }
      let(:link2) { Link.create }

      it 'can have many links' do
        2.times { link.clicks.create }
        3.times { link2.clicks.create }

        expect(link.clicks.size).to eq 2
        expect(link2.clicks.size).to eq 3
      end
    end
  end
end
