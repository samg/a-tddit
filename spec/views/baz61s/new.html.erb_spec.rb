require 'rails_helper'

RSpec.describe "baz61s/new", type: :view do
  before(:each) do
    assign(:baz61, Baz61.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz61 form" do
    render

    assert_select "form[action=?][method=?]", baz61s_path, "post" do

      assert_select "input[name=?]", "baz61[foo1]"

      assert_select "input[name=?]", "baz61[foo2]"

      assert_select "input[name=?]", "baz61[foo3]"

      assert_select "input[name=?]", "baz61[foo4]"

      assert_select "textarea[name=?]", "baz61[foo5]"
    end
  end
end
