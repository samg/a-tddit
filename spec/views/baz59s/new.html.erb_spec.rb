require 'rails_helper'

RSpec.describe "baz59s/new", type: :view do
  before(:each) do
    assign(:baz59, Baz59.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz59 form" do
    render

    assert_select "form[action=?][method=?]", baz59s_path, "post" do

      assert_select "input[name=?]", "baz59[foo1]"

      assert_select "input[name=?]", "baz59[foo2]"

      assert_select "input[name=?]", "baz59[foo3]"

      assert_select "input[name=?]", "baz59[foo4]"

      assert_select "textarea[name=?]", "baz59[foo5]"
    end
  end
end
