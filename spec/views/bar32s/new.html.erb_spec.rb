require 'rails_helper'

RSpec.describe "bar32s/new", type: :view do
  before(:each) do
    assign(:bar32, Bar32.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar32 form" do
    render

    assert_select "form[action=?][method=?]", bar32s_path, "post" do

      assert_select "input[name=?]", "bar32[foo1]"

      assert_select "input[name=?]", "bar32[foo2]"

      assert_select "input[name=?]", "bar32[foo3]"

      assert_select "input[name=?]", "bar32[foo4]"

      assert_select "textarea[name=?]", "bar32[foo5]"
    end
  end
end
