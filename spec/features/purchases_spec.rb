require 'rails_helper'

RSpec.describe 'Purchases Index Page', type: :feature do
  before do
    user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
    @group = Group.create(name: 'Category 1', icon: 'icon1.png', user:)
    @purchases = [
      Purchase.create(name: 'Transaction 1', amount: 50, user:, group: @group),
      Purchase.create(name: 'Transaction 2', amount: 75, user:, group: @group)
    ]

    visit new_user_session_path
    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
  end

  it 'displays transactions with their details' do
    visit group_purchases_path(@group)

    expect(page).to have_content("Transactions for #{@group.name}")

    within '.container' do
      @purchases.each do |purchase|
        expect(page).to have_content(purchase.name)
        expect(page).to have_content("Amount: $#{purchase.amount}")
        expect(page).to have_content("Created at: #{purchase.created_at}")
      end
    end
  end

  it 'allows adding a new transaction' do
    visit group_purchases_path(@group)

    click_link 'Add a new transaction'

    expect(page).to have_content(/New Transaction for/i)
  end

  it 'has a link to go back to categories' do
    visit group_purchases_path(@group)

    expect(page).to have_link('Back to Categories')
  end
end
