require 'rails_helper'

RSpec.describe "baz43s/new", type: :view do
  before(:each) do
    assign(:baz43, Baz43.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz43 form" do
    render

    assert_select "form[action=?][method=?]", baz43s_path, "post" do

      assert_select "input[name=?]", "baz43[foo1]"

      assert_select "input[name=?]", "baz43[foo2]"

      assert_select "input[name=?]", "baz43[foo3]"

      assert_select "input[name=?]", "baz43[foo4]"

      assert_select "textarea[name=?]", "baz43[foo5]"
    end
  end
end
