require 'rails_helper'

RSpec.describe "baz40s/new", type: :view do
  before(:each) do
    assign(:baz40, Baz40.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz40 form" do
    render

    assert_select "form[action=?][method=?]", baz40s_path, "post" do

      assert_select "input[name=?]", "baz40[foo1]"

      assert_select "input[name=?]", "baz40[foo2]"

      assert_select "input[name=?]", "baz40[foo3]"

      assert_select "input[name=?]", "baz40[foo4]"

      assert_select "textarea[name=?]", "baz40[foo5]"
    end
  end
end
