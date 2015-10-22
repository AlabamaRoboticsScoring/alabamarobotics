require 'rails_helper'

RSpec.describe "teams/edit", type: :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :name => "MyString",
      :members => "MyString",
      :age_group => 1,
      :school => "MyString"
    ))
  end

  it "renders the edit team form" do
    render

    assert_select "form[action=?][method=?]", team_path(@team), "post" do

      assert_select "input#team_name[name=?]", "team[name]"

      assert_select "input#team_members[name=?]", "team[members]"

      assert_select "input#team_age_group[name=?]", "team[age_group]"

      assert_select "input#team_school[name=?]", "team[school]"
    end
  end
end
