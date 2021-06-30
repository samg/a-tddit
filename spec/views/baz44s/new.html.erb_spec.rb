require 'rails_helper'

RSpec.describe "baz44s/new", type: :view do
  before(:each) do
    assign(:baz44, Baz44.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz44 form" do
    render

    assert_select "form[action=?][method=?]", baz44s_path, "post" do

      assert_select "input[name=?]", "baz44[foo1]"

      assert_select "input[name=?]", "baz44[foo2]"

      assert_select "input[name=?]", "baz44[foo3]"

      assert_select "input[name=?]", "baz44[foo4]"

      assert_select "textarea[name=?]", "baz44[foo5]"
    end
  end
end
