require 'spec_helper'

describe LineItem do
  it 'can create line items via association' do
    expect {
      FactoryGirl.create(:line_item)
    }.to change(LineItem, :count).by(1)
  end
end
