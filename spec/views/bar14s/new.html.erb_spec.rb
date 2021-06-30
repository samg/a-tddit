require 'rails_helper'

RSpec.describe "bar14s/new", type: :view do
  before(:each) do
    assign(:bar14, Bar14.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar14 form" do
    render

    assert_select "form[action=?][method=?]", bar14s_path, "post" do

      assert_select "input[name=?]", "bar14[foo1]"

      assert_select "input[name=?]", "bar14[foo2]"

      assert_select "input[name=?]", "bar14[foo3]"

      assert_select "input[name=?]", "bar14[foo4]"

      assert_select "textarea[name=?]", "bar14[foo5]"
    end
  end
end
