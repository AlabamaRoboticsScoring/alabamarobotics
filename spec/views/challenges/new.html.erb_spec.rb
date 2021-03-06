require 'rails_helper'

RSpec.describe "challenges/new", type: :view do
  before(:each) do
    assign(:challenge, Challenge.new(
      :name => "MyString",
      :duration? => false
    ))
  end

  it "renders new challenge form" do
    render

    assert_select "form[action=?][method=?]", challenges_path, "post" do

      assert_select "input#challenge_name[name=?]", "challenge[name]"

      assert_select "input#challenge_duration?[name=?]", "challenge[duration?]"
    end
  end
end
