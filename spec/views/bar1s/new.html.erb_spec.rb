require 'rails_helper'

RSpec.describe "bar1s/new", type: :view do
  before(:each) do
    assign(:bar1, Bar1.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar1 form" do
    render

    assert_select "form[action=?][method=?]", bar1s_path, "post" do

      assert_select "input[name=?]", "bar1[foo1]"

      assert_select "input[name=?]", "bar1[foo2]"

      assert_select "input[name=?]", "bar1[foo3]"

      assert_select "input[name=?]", "bar1[foo4]"

      assert_select "textarea[name=?]", "bar1[foo5]"
    end
  end
end
