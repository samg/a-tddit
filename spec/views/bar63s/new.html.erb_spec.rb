require 'rails_helper'

RSpec.describe "bar63s/new", type: :view do
  before(:each) do
    assign(:bar63, Bar63.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar63 form" do
    render

    assert_select "form[action=?][method=?]", bar63s_path, "post" do

      assert_select "input[name=?]", "bar63[foo1]"

      assert_select "input[name=?]", "bar63[foo2]"

      assert_select "input[name=?]", "bar63[foo3]"

      assert_select "input[name=?]", "bar63[foo4]"

      assert_select "textarea[name=?]", "bar63[foo5]"
    end
  end
end
