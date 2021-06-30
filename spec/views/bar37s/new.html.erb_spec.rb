require 'rails_helper'

RSpec.describe "bar37s/new", type: :view do
  before(:each) do
    assign(:bar37, Bar37.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar37 form" do
    render

    assert_select "form[action=?][method=?]", bar37s_path, "post" do

      assert_select "input[name=?]", "bar37[foo1]"

      assert_select "input[name=?]", "bar37[foo2]"

      assert_select "input[name=?]", "bar37[foo3]"

      assert_select "input[name=?]", "bar37[foo4]"

      assert_select "textarea[name=?]", "bar37[foo5]"
    end
  end
end
