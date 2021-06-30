require 'rails_helper'

RSpec.describe "baz16s/new", type: :view do
  before(:each) do
    assign(:baz16, Baz16.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz16 form" do
    render

    assert_select "form[action=?][method=?]", baz16s_path, "post" do

      assert_select "input[name=?]", "baz16[foo1]"

      assert_select "input[name=?]", "baz16[foo2]"

      assert_select "input[name=?]", "baz16[foo3]"

      assert_select "input[name=?]", "baz16[foo4]"

      assert_select "textarea[name=?]", "baz16[foo5]"
    end
  end
end
