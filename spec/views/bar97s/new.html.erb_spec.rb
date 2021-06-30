require 'rails_helper'

RSpec.describe "bar97s/new", type: :view do
  before(:each) do
    assign(:bar97, Bar97.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar97 form" do
    render

    assert_select "form[action=?][method=?]", bar97s_path, "post" do

      assert_select "input[name=?]", "bar97[foo1]"

      assert_select "input[name=?]", "bar97[foo2]"

      assert_select "input[name=?]", "bar97[foo3]"

      assert_select "input[name=?]", "bar97[foo4]"

      assert_select "textarea[name=?]", "bar97[foo5]"
    end
  end
end
