require 'rails_helper'

RSpec.describe "attempts/edit", type: :view do
  before(:each) do
    @attempt = assign(:attempt, Attempt.create!(
      :team => nil,
      :course => nil,
      :points => 1,
      :judge_name => "MyString"
    ))
  end

  it "renders the edit attempt form" do
    render

    assert_select "form[action=?][method=?]", attempt_path(@attempt), "post" do

      assert_select "input#attempt_team_id[name=?]", "attempt[team_id]"

      assert_select "input#attempt_course_id[name=?]", "attempt[course_id]"

      assert_select "input#attempt_points[name=?]", "attempt[points]"

      assert_select "input#attempt_judge_name[name=?]", "attempt[judge_name]"
    end
  end
end
