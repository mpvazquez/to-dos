require 'spec_helper'

describe 'user can manage tasks' do
  before :each do
    visit root_path
  end

  it "takes user to root path" do
    expect(page).to have_content "To Do's"
  end

  it "should allow user to enter a new task" do
    fill_in 'Task', with: 'Do the Dishes'
    expect(page).to have_content "Do the Dishes"
  end
end