require 'rails_helper'

RSpec.describe "weights/show", type: :view do
  before(:each) do
    @weight = assign(:weight, Weight.create!(
      :weight => 2,
      :baby_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
