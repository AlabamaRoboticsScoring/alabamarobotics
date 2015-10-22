require 'rails_helper'

RSpec.describe "attempts/new", type: :view do
  before(:each) do
    assign(:attempt, Attempt.new(
      :team => nil,
      :course => nil,
      :points => 1,
      :judge_name => "MyString"
    ))
  end

  it "renders new attempt form" do
    render

    assert_select "form[action=?][method=?]", attempts_path, "post" do

      assert_select "input#attempt_team_id[name=?]", "attempt[team_id]"

      assert_select "input#attempt_course_id[name=?]", "attempt[course_id]"

      assert_select "input#attempt_points[name=?]", "attempt[points]"

      assert_select "input#attempt_judge_name[name=?]", "attempt[judge_name]"
    end
  end
end
