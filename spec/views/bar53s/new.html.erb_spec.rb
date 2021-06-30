require 'rails_helper'

RSpec.describe "bar53s/new", type: :view do
  before(:each) do
    assign(:bar53, Bar53.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar53 form" do
    render

    assert_select "form[action=?][method=?]", bar53s_path, "post" do

      assert_select "input[name=?]", "bar53[foo1]"

      assert_select "input[name=?]", "bar53[foo2]"

      assert_select "input[name=?]", "bar53[foo3]"

      assert_select "input[name=?]", "bar53[foo4]"

      assert_select "textarea[name=?]", "bar53[foo5]"
    end
  end
end
