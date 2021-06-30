require 'rails_helper'

RSpec.describe "bar84s/new", type: :view do
  before(:each) do
    assign(:bar84, Bar84.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar84 form" do
    render

    assert_select "form[action=?][method=?]", bar84s_path, "post" do

      assert_select "input[name=?]", "bar84[foo1]"

      assert_select "input[name=?]", "bar84[foo2]"

      assert_select "input[name=?]", "bar84[foo3]"

      assert_select "input[name=?]", "bar84[foo4]"

      assert_select "textarea[name=?]", "bar84[foo5]"
    end
  end
end
