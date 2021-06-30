require 'rails_helper'

RSpec.describe "baz12s/new", type: :view do
  before(:each) do
    assign(:baz12, Baz12.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz12 form" do
    render

    assert_select "form[action=?][method=?]", baz12s_path, "post" do

      assert_select "input[name=?]", "baz12[foo1]"

      assert_select "input[name=?]", "baz12[foo2]"

      assert_select "input[name=?]", "baz12[foo3]"

      assert_select "input[name=?]", "baz12[foo4]"

      assert_select "textarea[name=?]", "baz12[foo5]"
    end
  end
end
