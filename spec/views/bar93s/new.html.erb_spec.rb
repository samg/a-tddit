require 'rails_helper'

RSpec.describe "bar93s/new", type: :view do
  before(:each) do
    assign(:bar93, Bar93.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar93 form" do
    render

    assert_select "form[action=?][method=?]", bar93s_path, "post" do

      assert_select "input[name=?]", "bar93[foo1]"

      assert_select "input[name=?]", "bar93[foo2]"

      assert_select "input[name=?]", "bar93[foo3]"

      assert_select "input[name=?]", "bar93[foo4]"

      assert_select "textarea[name=?]", "bar93[foo5]"
    end
  end
end
