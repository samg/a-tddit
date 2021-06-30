require 'rails_helper'

RSpec.describe "baz98s/new", type: :view do
  before(:each) do
    assign(:baz98, Baz98.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz98 form" do
    render

    assert_select "form[action=?][method=?]", baz98s_path, "post" do

      assert_select "input[name=?]", "baz98[foo1]"

      assert_select "input[name=?]", "baz98[foo2]"

      assert_select "input[name=?]", "baz98[foo3]"

      assert_select "input[name=?]", "baz98[foo4]"

      assert_select "textarea[name=?]", "baz98[foo5]"
    end
  end
end
