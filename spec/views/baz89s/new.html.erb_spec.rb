require 'rails_helper'

RSpec.describe "baz89s/new", type: :view do
  before(:each) do
    assign(:baz89, Baz89.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz89 form" do
    render

    assert_select "form[action=?][method=?]", baz89s_path, "post" do

      assert_select "input[name=?]", "baz89[foo1]"

      assert_select "input[name=?]", "baz89[foo2]"

      assert_select "input[name=?]", "baz89[foo3]"

      assert_select "input[name=?]", "baz89[foo4]"

      assert_select "textarea[name=?]", "baz89[foo5]"
    end
  end
end
