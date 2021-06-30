require 'rails_helper'

RSpec.describe "bar9s/edit", type: :view do
  before(:each) do
    @bar9 = assign(:bar9, Bar9.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar9 form" do
    render

    assert_select "form[action=?][method=?]", bar9_path(@bar9), "post" do

      assert_select "input[name=?]", "bar9[foo1]"

      assert_select "input[name=?]", "bar9[foo2]"

      assert_select "input[name=?]", "bar9[foo3]"

      assert_select "input[name=?]", "bar9[foo4]"

      assert_select "textarea[name=?]", "bar9[foo5]"
    end
  end
end
