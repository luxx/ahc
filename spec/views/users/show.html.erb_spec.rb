require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :battletag => "Battletag",
      :skype => "Skype",
      :deck => "Deck",
      :email => "Email",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Battletag/)
    rendered.should match(/Skype/)
    rendered.should match(/Deck/)
    rendered.should match(/Email/)
    rendered.should match(/Password/)
  end
end
