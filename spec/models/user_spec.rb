require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to validate_confirmation_of(:password) }
  it { is_expected.to allow_value('zizo@ribeiro.com').for(:email) }
  #it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
  
end



  # subject { build(:user) }
  # #subject { FactoryGirl.build(:user) }
  #
  # it { expect(subject).to respond_to(:email) }
  # it { expect(subject).to be_valid }

  # # before { @user = FactoryGirl.build(:user) }
  # #
  # # it { expect(@user).to respond_to(:email) }
  # # it { expect(@user).to respond_to(:name) }
  # # it { expect(@user).to respond_to(:password) }
  # # it { expect(@user).to respond_to(:password_confirmation) }
  # # it { expect(@user).to be_valid }


