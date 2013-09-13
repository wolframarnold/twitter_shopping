require 'spec_helper'

describe Store do
  before :each do
    @store = FactoryGirl.create(:store)
    @user = @store.user
  end

  it 'can create associated products' do
    expect {
      @store.products.create(name: 'new product', seller: @user, price: 1000)
    }.to change{@store.products.count}.by(1)
  end

end
