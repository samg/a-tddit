require 'rails_helper'

RSpec.describe "baz26s/new", type: :view do
  before(:each) do
    assign(:baz26, Baz26.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz26 form" do
    render

    assert_select "form[action=?][method=?]", baz26s_path, "post" do

      assert_select "input[name=?]", "baz26[foo1]"

      assert_select "input[name=?]", "baz26[foo2]"

      assert_select "input[name=?]", "baz26[foo3]"

      assert_select "input[name=?]", "baz26[foo4]"

      assert_select "textarea[name=?]", "baz26[foo5]"
    end
  end
end
