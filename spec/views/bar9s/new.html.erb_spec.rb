require 'rails_helper'

RSpec.describe "bar9s/new", type: :view do
  before(:each) do
    assign(:bar9, Bar9.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar9 form" do
    render

    assert_select "form[action=?][method=?]", bar9s_path, "post" do

      assert_select "input[name=?]", "bar9[foo1]"

      assert_select "input[name=?]", "bar9[foo2]"

      assert_select "input[name=?]", "bar9[foo3]"

      assert_select "input[name=?]", "bar9[foo4]"

      assert_select "textarea[name=?]", "bar9[foo5]"
    end
  end
end
