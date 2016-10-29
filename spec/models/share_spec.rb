require 'rails_helper'

RSpec.describe Share do
  # Jeff refers to this as a 'sanity check'. Optional, but a good idea.
  it 'is an share' do
    expect(Share.new).to be_a(Share)
  end

  describe 'validations' do
    def valid_params
      { bill_id: 1, person_name: 'test', base_cost: 25.00 }
    end

    it 'validates the presence of an share\'s bill_id,
                                              person_name,
                                              and base_cost' do
      expect(Share.create(valid_params)).to be_valid
    end

    describe 'bill_id' do
      it 'is invalid without bill_id' do
        invalid_params = valid_params.select { |key, _| key == :bill_id }
        expect(Share.create(invalid_params)).to be_invalid
      end
    end
    describe 'person_name' do
      it 'is invalid without person_name' do
        invalid_params = valid_params.select { |key, _| key == :person_name }
        expect(Share.create(invalid_params)).to be_invalid
      end
    end
    describe 'base_cost' do
      it 'is invalid without base_cost' do
        invalid_params = valid_params.select { |key, _| key == :base_cost }
        expect(Share.create(invalid_params)).to be_invalid
      end
    end
  end

  describe 'bill association' do
    def bill_association
      described_class.reflect_on_association(:bill_id)
    end

    it 'has the name bill_id' do
      expect(bill_association).to_not be_nil
      expect(bill_association.name).to eq(:bill_id)
    end
  end
end
