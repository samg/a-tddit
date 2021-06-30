require 'rails_helper'

RSpec.describe "bar11s/new", type: :view do
  before(:each) do
    assign(:bar11, Bar11.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar11 form" do
    render

    assert_select "form[action=?][method=?]", bar11s_path, "post" do

      assert_select "input[name=?]", "bar11[foo1]"

      assert_select "input[name=?]", "bar11[foo2]"

      assert_select "input[name=?]", "bar11[foo3]"

      assert_select "input[name=?]", "bar11[foo4]"

      assert_select "textarea[name=?]", "bar11[foo5]"
    end
  end
end
