require 'rails_helper'

RSpec.describe User, type: :model do

  describe User do
    it { should have_many(:signees).class_name('Signee') }
    it { should have_one(:signature_template).class_name('SignatureTemplate') }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
  end
end
