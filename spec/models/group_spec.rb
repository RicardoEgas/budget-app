require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'is valid with valid attributes' do
    user = User.create(name: 'John Doe', email: 'test@example.com', password: 'password')
    group = Group.new(name: 'Microverse', icon: 'icon.png', user:)
    expect(group).to be_valid
  end

  it 'is not valid without a name' do
    group = Group.new(icon: 'icon.png')
    expect(group).to_not be_valid
  end

  it 'is not valid without an icon' do
    group = Group.new(name: 'Microverse')
    expect(group).to_not be_valid
  end
end
