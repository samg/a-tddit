require 'rails_helper'

RSpec.describe "bar45s/new", type: :view do
  before(:each) do
    assign(:bar45, Bar45.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar45 form" do
    render

    assert_select "form[action=?][method=?]", bar45s_path, "post" do

      assert_select "input[name=?]", "bar45[foo1]"

      assert_select "input[name=?]", "bar45[foo2]"

      assert_select "input[name=?]", "bar45[foo3]"

      assert_select "input[name=?]", "bar45[foo4]"

      assert_select "textarea[name=?]", "bar45[foo5]"
    end
  end
end
