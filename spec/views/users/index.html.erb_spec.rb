require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :battletag => "Battletag",
        :skype => "Skype",
        :deck => "Deck",
        :email => "Email",
        :password => "Password"
      ),
      stub_model(User,
        :battletag => "Battletag",
        :skype => "Skype",
        :deck => "Deck",
        :email => "Email",
        :password => "Password"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Battletag".to_s, :count => 2
    assert_select "tr>td", :text => "Skype".to_s, :count => 2
    assert_select "tr>td", :text => "Deck".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
