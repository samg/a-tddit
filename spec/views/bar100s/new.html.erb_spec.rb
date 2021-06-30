require 'rails_helper'

RSpec.describe "bar100s/new", type: :view do
  before(:each) do
    assign(:bar100, Bar100.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar100 form" do
    render

    assert_select "form[action=?][method=?]", bar100s_path, "post" do

      assert_select "input[name=?]", "bar100[foo1]"

      assert_select "input[name=?]", "bar100[foo2]"

      assert_select "input[name=?]", "bar100[foo3]"

      assert_select "input[name=?]", "bar100[foo4]"

      assert_select "textarea[name=?]", "bar100[foo5]"
    end
  end
end
