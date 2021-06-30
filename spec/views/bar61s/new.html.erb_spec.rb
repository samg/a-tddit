require 'rails_helper'

RSpec.describe "bar61s/new", type: :view do
  before(:each) do
    assign(:bar61, Bar61.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar61 form" do
    render

    assert_select "form[action=?][method=?]", bar61s_path, "post" do

      assert_select "input[name=?]", "bar61[foo1]"

      assert_select "input[name=?]", "bar61[foo2]"

      assert_select "input[name=?]", "bar61[foo3]"

      assert_select "input[name=?]", "bar61[foo4]"

      assert_select "textarea[name=?]", "bar61[foo5]"
    end
  end
end
