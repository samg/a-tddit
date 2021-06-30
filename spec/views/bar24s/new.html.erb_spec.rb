require 'rails_helper'

RSpec.describe "bar24s/new", type: :view do
  before(:each) do
    assign(:bar24, Bar24.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar24 form" do
    render

    assert_select "form[action=?][method=?]", bar24s_path, "post" do

      assert_select "input[name=?]", "bar24[foo1]"

      assert_select "input[name=?]", "bar24[foo2]"

      assert_select "input[name=?]", "bar24[foo3]"

      assert_select "input[name=?]", "bar24[foo4]"

      assert_select "textarea[name=?]", "bar24[foo5]"
    end
  end
end
