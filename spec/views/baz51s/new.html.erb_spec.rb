require 'rails_helper'

RSpec.describe "baz51s/new", type: :view do
  before(:each) do
    assign(:baz51, Baz51.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz51 form" do
    render

    assert_select "form[action=?][method=?]", baz51s_path, "post" do

      assert_select "input[name=?]", "baz51[foo1]"

      assert_select "input[name=?]", "baz51[foo2]"

      assert_select "input[name=?]", "baz51[foo3]"

      assert_select "input[name=?]", "baz51[foo4]"

      assert_select "textarea[name=?]", "baz51[foo5]"
    end
  end
end
