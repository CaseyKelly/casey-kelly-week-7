require 'rails_helper'

describe 'valid user can sign in' do

  before :each do
    visit root_url
    click_on "Sign Up"
  end

  it "successfully adds a user" do
    expect(page).to have_content 'Hard Knocks'
    fill_in "User name", with: "Puggeroni"
    fill_in "About", with: "Dog"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Login!"
    expect(page).to have_content "Thanks for signing up"
  end


end
