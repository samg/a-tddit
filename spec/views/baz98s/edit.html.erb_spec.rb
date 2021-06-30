require 'rails_helper'

RSpec.describe "baz98s/edit", type: :view do
  before(:each) do
    @baz98 = assign(:baz98, Baz98.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz98 form" do
    render

    assert_select "form[action=?][method=?]", baz98_path(@baz98), "post" do

      assert_select "input[name=?]", "baz98[foo1]"

      assert_select "input[name=?]", "baz98[foo2]"

      assert_select "input[name=?]", "baz98[foo3]"

      assert_select "input[name=?]", "baz98[foo4]"

      assert_select "textarea[name=?]", "baz98[foo5]"
    end
  end
end
