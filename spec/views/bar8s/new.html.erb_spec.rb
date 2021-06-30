require 'rails_helper'

RSpec.describe "bar8s/new", type: :view do
  before(:each) do
    assign(:bar8, Bar8.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar8 form" do
    render

    assert_select "form[action=?][method=?]", bar8s_path, "post" do

      assert_select "input[name=?]", "bar8[foo1]"

      assert_select "input[name=?]", "bar8[foo2]"

      assert_select "input[name=?]", "bar8[foo3]"

      assert_select "input[name=?]", "bar8[foo4]"

      assert_select "textarea[name=?]", "bar8[foo5]"
    end
  end
end
