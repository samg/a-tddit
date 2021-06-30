require 'rails_helper'

RSpec.describe "baz50s/new", type: :view do
  before(:each) do
    assign(:baz50, Baz50.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz50 form" do
    render

    assert_select "form[action=?][method=?]", baz50s_path, "post" do

      assert_select "input[name=?]", "baz50[foo1]"

      assert_select "input[name=?]", "baz50[foo2]"

      assert_select "input[name=?]", "baz50[foo3]"

      assert_select "input[name=?]", "baz50[foo4]"

      assert_select "textarea[name=?]", "baz50[foo5]"
    end
  end
end
