require 'rails_helper'

RSpec.describe "attempts/index", type: :view do
  before(:each) do
    assign(:attempts, [
      Attempt.create!(
        :team => nil,
        :course => nil,
        :points => 1,
        :judge_name => "Judge Name"
      ),
      Attempt.create!(
        :team => nil,
        :course => nil,
        :points => 1,
        :judge_name => "Judge Name"
      )
    ])
  end

  it "renders a list of attempts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Judge Name".to_s, :count => 2
  end
end
