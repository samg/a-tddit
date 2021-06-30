require 'rails_helper'

RSpec.describe "baz3s/new", type: :view do
  before(:each) do
    assign(:baz3, Baz3.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz3 form" do
    render

    assert_select "form[action=?][method=?]", baz3s_path, "post" do

      assert_select "input[name=?]", "baz3[foo1]"

      assert_select "input[name=?]", "baz3[foo2]"

      assert_select "input[name=?]", "baz3[foo3]"

      assert_select "input[name=?]", "baz3[foo4]"

      assert_select "textarea[name=?]", "baz3[foo5]"
    end
  end
end
