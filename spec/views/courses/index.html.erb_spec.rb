require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :challenge => nil,
        :pin => "Pin"
      ),
      Course.create!(
        :challenge => nil,
        :pin => "Pin"
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Pin".to_s, :count => 2
  end
end
