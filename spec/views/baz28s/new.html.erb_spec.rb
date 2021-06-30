require 'rails_helper'

RSpec.describe "baz28s/new", type: :view do
  before(:each) do
    assign(:baz28, Baz28.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz28 form" do
    render

    assert_select "form[action=?][method=?]", baz28s_path, "post" do

      assert_select "input[name=?]", "baz28[foo1]"

      assert_select "input[name=?]", "baz28[foo2]"

      assert_select "input[name=?]", "baz28[foo3]"

      assert_select "input[name=?]", "baz28[foo4]"

      assert_select "textarea[name=?]", "baz28[foo5]"
    end
  end
end
