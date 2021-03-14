require 'rails_helper'

RSpec.describe User, type: :model do
<<<<<<< HEAD
  subject(:user) { build(:user) }

  describe 'association' do
    it { is_expected.to have_many(:tweeets).with_foreign_key(:user_id).dependent(:destroy) }
  end

  describe 'validations' do
    it { is_expected.to have_secure_password }

    it { is_expected.to validate_presence_of(:username) }

    it { is_expected.to validate_length_of(:username).is_at_most(255) }

    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to validate_length_of(:name).is_at_most(20) }

    it { is_expected.to validate_length_of(:password).is_at_least(6) }

    it 'lowercase username before saving' do
      username = 'helloexamplecom'
      user.username = username.upcase
      user.save!

      expect(user.username).to eq(username)
    end

    it 'strips the username before validation' do
      username = '   helloexamplecom '
      user.username = username
      user.save!

      expect(user.username).to eq('helloexamplecom')
    end

    it 'generates user auth_token at random' do
      user.auth_token = nil
      user.save!

      expect(user.auth_token).to be_present
    end
  end
=======
  describe 'Validations' do
    it do
      should validate_presence_of(:username)
        .with_message('Username cannot be blank')
    end
    it do
      should validate_length_of(:username)
        .is_at_most(10)
        .with_message('Maximum allowed username is 10 characters.')
    end
    it { should_not validate_length_of(:username).is_at_least(2) }
    it { should_not validate_length_of(:username).is_at_most(11) }
    it { should validate_uniqueness_of(:username).case_insensitive.with_message('Username already taken.') }

    it do
      should validate_presence_of(:fullname)
        .with_message('FullName cannot be blank')
    end

    it do
      should validate_length_of(:fullname)
        .is_at_most(20)
        .with_message('Maximum allowed fullname is 20 characters.')
    end

    it do
      should_not validate_length_of(:fullname)
        .is_at_least(5)
        .with_message('Minimum allowed characters for fullname is 6')
    end
  end

  describe 'Associations' do
    it { should have_many(:opinions).with_foreign_key(:author_id) }
    it { should have_many(:followings).with_foreign_key(:follower_id) }
    it { should have_many(:follows).through(:followings) }
    it { should have_many(:followers).through(:inverse_followings) }
  end
>>>>>>> origin/twitter
end
