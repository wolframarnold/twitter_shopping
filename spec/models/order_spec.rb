require 'spec_helper'

describe Order do
  before do
    @product = FactoryGirl.create(:product)
    @buyer = FactoryGirl.create(:user)
  end

  it 'supports :pending, :paid, :refunded status' do
    expect {
      @buyer.orders.create
    }.to change { @buyer.orders.count }.by(1)
  end

  it 'is not valid with any other status' do
    expect {
      order = @buyer.orders.create(status: 'foo')
      order.should_not be_valid
    }.to_not change { @buyer.orders.count }

  end

  it 'supports valid payment_status' do
    expect {
      @buyer.orders.create
    }.to change { @buyer.orders.count }.by(1)
  end

  it 'is not valid with any other status' do
    expect {
      order = @buyer.orders.create(payment_status: 'foo')
      order.should_not be_valid
    }.to_not change { @buyer.orders.count }

  end

end
