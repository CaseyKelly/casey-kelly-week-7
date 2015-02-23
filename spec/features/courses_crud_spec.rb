require 'rails_helper'

describe 'users can crud courses' do

  before :each do
    @my_user = User.create(user_name: 'Casey', about: 'Way cool', password: '475523', password_confirmation: '475523')
    visit '/login'
    fill_in "User name", with: "Casey"
    fill_in "Password", with: "475523"
    click_on "Login!"
    expect(page).to have_content "Casey"
  end

  it "User can create a course" do
    click_on "Course List"
    click_on "Add a course"
    fill_in "Title", with: "Balls"
    click_on "Add course!"
    expect(page).to have_content "Balls"
  end

  it "User can edit a course" do
    @my_course = Course.create(title: 'Balls', daytime: true)
    visit '/courses'
    click_on "Edit"
    fill_in "Title", with: "Ballers"
    click_on "Update course!"
    expect(page).to have_content "Ballers"
  end

  it "User can delete a course" do
    @my_course = Course.create(title: 'Balls', daytime: true)
    visit '/courses'
    click_on "Delete"
    expect(page).to have_content "Course was successfully deleted."
  end

end
