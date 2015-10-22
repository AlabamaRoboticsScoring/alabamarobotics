require 'rails_helper'

RSpec.describe "teams/new", type: :view do
  before(:each) do
    assign(:team, Team.new(
      :name => "MyString",
      :members => "MyString",
      :age_group => 1,
      :school => "MyString"
    ))
  end

  it "renders new team form" do
    render

    assert_select "form[action=?][method=?]", teams_path, "post" do

      assert_select "input#team_name[name=?]", "team[name]"

      assert_select "input#team_members[name=?]", "team[members]"

      assert_select "input#team_age_group[name=?]", "team[age_group]"

      assert_select "input#team_school[name=?]", "team[school]"
    end
  end
end
