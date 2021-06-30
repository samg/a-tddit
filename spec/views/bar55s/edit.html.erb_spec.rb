require 'rails_helper'

RSpec.describe "bar55s/edit", type: :view do
  before(:each) do
    @bar55 = assign(:bar55, Bar55.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar55 form" do
    render

    assert_select "form[action=?][method=?]", bar55_path(@bar55), "post" do

      assert_select "input[name=?]", "bar55[foo1]"

      assert_select "input[name=?]", "bar55[foo2]"

      assert_select "input[name=?]", "bar55[foo3]"

      assert_select "input[name=?]", "bar55[foo4]"

      assert_select "textarea[name=?]", "bar55[foo5]"
    end
  end
end