require 'rails_helper'

RSpec.describe Tweeet, type: :model do
  subject(:tweeet) { build(:tweeet) }

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:content) }

    it { is_expected.to validate_length_of(:text).is_at_most(255) }
  end
end
