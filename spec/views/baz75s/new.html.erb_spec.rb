require 'rails_helper'

RSpec.describe "baz75s/new", type: :view do
  before(:each) do
    assign(:baz75, Baz75.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz75 form" do
    render

    assert_select "form[action=?][method=?]", baz75s_path, "post" do

      assert_select "input[name=?]", "baz75[foo1]"

      assert_select "input[name=?]", "baz75[foo2]"

      assert_select "input[name=?]", "baz75[foo3]"

      assert_select "input[name=?]", "baz75[foo4]"

      assert_select "textarea[name=?]", "baz75[foo5]"
    end
  end
end
