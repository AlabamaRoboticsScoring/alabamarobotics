require 'rails_helper'

RSpec.describe "challenges/index", type: :view do
  before(:each) do
    assign(:challenges, [
      Challenge.create!(
        :name => "Name",
        :duration? => false
      ),
      Challenge.create!(
        :name => "Name",
        :duration? => false
      )
    ])
  end

  it "renders a list of challenges" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
