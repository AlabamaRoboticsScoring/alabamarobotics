require 'rails_helper'

RSpec.describe "teams/show", type: :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :name => "Name",
      :members => "Members",
      :age_group => 1,
      :school => "School"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Members/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/School/)
  end
end
