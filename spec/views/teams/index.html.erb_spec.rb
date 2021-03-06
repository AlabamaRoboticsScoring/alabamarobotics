require 'rails_helper'

RSpec.describe "teams/index", type: :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
        :name => "Name",
        :members => "Members",
        :age_group => 1,
        :school => "School"
      ),
      Team.create!(
        :name => "Name",
        :members => "Members",
        :age_group => 1,
        :school => "School"
      )
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Members".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
  end
end
