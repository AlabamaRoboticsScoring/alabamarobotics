require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :challenge => nil,
      :pin => "MyString"
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_challenge_id[name=?]", "course[challenge_id]"

      assert_select "input#course_pin[name=?]", "course[pin]"
    end
  end
end
