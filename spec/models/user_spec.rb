require 'spec_helper'

describe User do

  before :each do
    @user = FactoryGirl.create(:user)
  end

  it 'can create associated stores' do
    expect {
      @user.stores.create(name: 'new store')
    }.to change{@user.stores.count}.by(1)
  end

end
