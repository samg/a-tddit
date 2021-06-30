require 'rails_helper'

RSpec.describe "baz34s/new", type: :view do
  before(:each) do
    assign(:baz34, Baz34.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz34 form" do
    render

    assert_select "form[action=?][method=?]", baz34s_path, "post" do

      assert_select "input[name=?]", "baz34[foo1]"

      assert_select "input[name=?]", "baz34[foo2]"

      assert_select "input[name=?]", "baz34[foo3]"

      assert_select "input[name=?]", "baz34[foo4]"

      assert_select "textarea[name=?]", "baz34[foo5]"
    end
  end
end
