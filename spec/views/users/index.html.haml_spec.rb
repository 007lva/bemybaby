require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :email => "email@email.com",
        :password => "Password",
        :level => 2
      ),
      User.create!(
        :email => "Email",
        :password => "Password",
        :level => 2
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
