require 'rails_helper'

RSpec.describe "baz17s/new", type: :view do
  before(:each) do
    assign(:baz17, Baz17.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz17 form" do
    render

    assert_select "form[action=?][method=?]", baz17s_path, "post" do

      assert_select "input[name=?]", "baz17[foo1]"

      assert_select "input[name=?]", "baz17[foo2]"

      assert_select "input[name=?]", "baz17[foo3]"

      assert_select "input[name=?]", "baz17[foo4]"

      assert_select "textarea[name=?]", "baz17[foo5]"
    end
  end
end
