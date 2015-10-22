require 'rails_helper'

RSpec.describe "attempts/show", type: :view do
  before(:each) do
    @attempt = assign(:attempt, Attempt.create!(
      :team => nil,
      :course => nil,
      :points => 1,
      :judge_name => "Judge Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Judge Name/)
  end
end
