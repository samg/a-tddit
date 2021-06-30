require 'rails_helper'

RSpec.describe "baz23s/edit", type: :view do
  before(:each) do
    @baz23 = assign(:baz23, Baz23.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz23 form" do
    render

    assert_select "form[action=?][method=?]", baz23_path(@baz23), "post" do

      assert_select "input[name=?]", "baz23[foo1]"

      assert_select "input[name=?]", "baz23[foo2]"

      assert_select "input[name=?]", "baz23[foo3]"

      assert_select "input[name=?]", "baz23[foo4]"

      assert_select "textarea[name=?]", "baz23[foo5]"
    end
  end
end
