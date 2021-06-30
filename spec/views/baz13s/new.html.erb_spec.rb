require 'rails_helper'

RSpec.describe "baz13s/new", type: :view do
  before(:each) do
    assign(:baz13, Baz13.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz13 form" do
    render

    assert_select "form[action=?][method=?]", baz13s_path, "post" do

      assert_select "input[name=?]", "baz13[foo1]"

      assert_select "input[name=?]", "baz13[foo2]"

      assert_select "input[name=?]", "baz13[foo3]"

      assert_select "input[name=?]", "baz13[foo4]"

      assert_select "textarea[name=?]", "baz13[foo5]"
    end
  end
end
