require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      :challenge => nil,
      :pin => "MyString"
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input#course_challenge_id[name=?]", "course[challenge_id]"

      assert_select "input#course_pin[name=?]", "course[pin]"
    end
  end
end
