require 'rails_helper'

RSpec.describe "bar78s/new", type: :view do
  before(:each) do
    assign(:bar78, Bar78.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar78 form" do
    render

    assert_select "form[action=?][method=?]", bar78s_path, "post" do

      assert_select "input[name=?]", "bar78[foo1]"

      assert_select "input[name=?]", "bar78[foo2]"

      assert_select "input[name=?]", "bar78[foo3]"

      assert_select "input[name=?]", "bar78[foo4]"

      assert_select "textarea[name=?]", "bar78[foo5]"
    end
  end
end
