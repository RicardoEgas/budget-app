require 'rails_helper'

RSpec.describe Purchase, type: :model do
  it 'is valid with valid attributes' do
    user = User.create(name: 'John Doe', email: 'test@example.com', password: 'password')
    group = Group.create(name: 'Example Group', icon: 'icon.png', user:)
    purchase = Purchase.new(name: 'Example Purchase', amount: 20, user:, group:)
    expect(purchase).to be_valid
  end

  it 'is not valid without a name' do
    purchase = Purchase.new(amount: 20)
    expect(purchase).to_not be_valid
  end

  it 'is not valid without an amount' do
    purchase = Purchase.new(name: 'Example Purchase')
    expect(purchase).to_not be_valid
  end

  it 'is not valid with a negative amount' do
    purchase = Purchase.new(name: 'Example Purchase', amount: -10)
    expect(purchase).to_not be_valid
  end
end
