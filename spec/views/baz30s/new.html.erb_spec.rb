require 'rails_helper'

RSpec.describe "baz30s/new", type: :view do
  before(:each) do
    assign(:baz30, Baz30.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz30 form" do
    render

    assert_select "form[action=?][method=?]", baz30s_path, "post" do

      assert_select "input[name=?]", "baz30[foo1]"

      assert_select "input[name=?]", "baz30[foo2]"

      assert_select "input[name=?]", "baz30[foo3]"

      assert_select "input[name=?]", "baz30[foo4]"

      assert_select "textarea[name=?]", "baz30[foo5]"
    end
  end
end
