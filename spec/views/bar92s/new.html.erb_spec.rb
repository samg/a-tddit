require 'rails_helper'

RSpec.describe "bar92s/new", type: :view do
  before(:each) do
    assign(:bar92, Bar92.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar92 form" do
    render

    assert_select "form[action=?][method=?]", bar92s_path, "post" do

      assert_select "input[name=?]", "bar92[foo1]"

      assert_select "input[name=?]", "bar92[foo2]"

      assert_select "input[name=?]", "bar92[foo3]"

      assert_select "input[name=?]", "bar92[foo4]"

      assert_select "textarea[name=?]", "bar92[foo5]"
    end
  end
end
