require 'rails_helper'

RSpec.describe "baz8s/new", type: :view do
  before(:each) do
    assign(:baz8, Baz8.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz8 form" do
    render

    assert_select "form[action=?][method=?]", baz8s_path, "post" do

      assert_select "input[name=?]", "baz8[foo1]"

      assert_select "input[name=?]", "baz8[foo2]"

      assert_select "input[name=?]", "baz8[foo3]"

      assert_select "input[name=?]", "baz8[foo4]"

      assert_select "textarea[name=?]", "baz8[foo5]"
    end
  end
end
