require 'rails_helper'

RSpec.describe "baz25s/new", type: :view do
  before(:each) do
    assign(:baz25, Baz25.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz25 form" do
    render

    assert_select "form[action=?][method=?]", baz25s_path, "post" do

      assert_select "input[name=?]", "baz25[foo1]"

      assert_select "input[name=?]", "baz25[foo2]"

      assert_select "input[name=?]", "baz25[foo3]"

      assert_select "input[name=?]", "baz25[foo4]"

      assert_select "textarea[name=?]", "baz25[foo5]"
    end
  end
end
