require 'rails_helper'

RSpec.describe "bar41s/new", type: :view do
  before(:each) do
    assign(:bar41, Bar41.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar41 form" do
    render

    assert_select "form[action=?][method=?]", bar41s_path, "post" do

      assert_select "input[name=?]", "bar41[foo1]"

      assert_select "input[name=?]", "bar41[foo2]"

      assert_select "input[name=?]", "bar41[foo3]"

      assert_select "input[name=?]", "bar41[foo4]"

      assert_select "textarea[name=?]", "bar41[foo5]"
    end
  end
end
