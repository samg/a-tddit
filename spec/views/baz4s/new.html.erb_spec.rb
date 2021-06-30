require 'rails_helper'

RSpec.describe "baz4s/new", type: :view do
  before(:each) do
    assign(:baz4, Baz4.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz4 form" do
    render

    assert_select "form[action=?][method=?]", baz4s_path, "post" do

      assert_select "input[name=?]", "baz4[foo1]"

      assert_select "input[name=?]", "baz4[foo2]"

      assert_select "input[name=?]", "baz4[foo3]"

      assert_select "input[name=?]", "baz4[foo4]"

      assert_select "textarea[name=?]", "baz4[foo5]"
    end
  end
end
