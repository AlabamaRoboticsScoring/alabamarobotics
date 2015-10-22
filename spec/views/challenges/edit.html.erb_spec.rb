require 'rails_helper'

RSpec.describe "challenges/edit", type: :view do
  before(:each) do
    @challenge = assign(:challenge, Challenge.create!(
      :name => "MyString",
      :duration? => false
    ))
  end

  it "renders the edit challenge form" do
    render

    assert_select "form[action=?][method=?]", challenge_path(@challenge), "post" do

      assert_select "input#challenge_name[name=?]", "challenge[name]"

      assert_select "input#challenge_duration?[name=?]", "challenge[duration?]"
    end
  end
end
