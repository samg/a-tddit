require 'rails_helper'

RSpec.describe "baz7s/new", type: :view do
  before(:each) do
    assign(:baz7, Baz7.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz7 form" do
    render

    assert_select "form[action=?][method=?]", baz7s_path, "post" do

      assert_select "input[name=?]", "baz7[foo1]"

      assert_select "input[name=?]", "baz7[foo2]"

      assert_select "input[name=?]", "baz7[foo3]"

      assert_select "input[name=?]", "baz7[foo4]"

      assert_select "textarea[name=?]", "baz7[foo5]"
    end
  end
end
