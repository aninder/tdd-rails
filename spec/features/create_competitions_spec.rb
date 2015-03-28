require 'rails_helper'

describe "CreateCompetitions"  do
  it "create competitions" do
    visit new_competition_path
    fill_in "Name",with: "asdad"
    click_button "Submit"
    page.body.should have_selector ".flash.notice"
    page.body.should have_content "Competition created"
  end
end
