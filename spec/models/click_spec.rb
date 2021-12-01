require 'rails_helper'

RSpec.describe Click, type: :model do
  # pointless tests but lets make sure things "work" :)
  describe 'associations' do
    context 'belongs_to' do
      let!(:link) { Link.create }
      let!(:click) { link.clicks.create }

      it 'has a link' do
        expect(link.clicks.size).to eq 1
        expect(click.link).to eq link
      end

      it 'blows up without a link association' do
        expect { Click.create! }.to raise_error(ActiveRecord::RecordInvalid)
        expect(Click.new.valid?).to eq false
      end
    end
  end
end
