require 'rails_helper'

RSpec.describe "baz25s/edit", type: :view do
  before(:each) do
    @baz25 = assign(:baz25, Baz25.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz25 form" do
    render

    assert_select "form[action=?][method=?]", baz25_path(@baz25), "post" do

      assert_select "input[name=?]", "baz25[foo1]"

      assert_select "input[name=?]", "baz25[foo2]"

      assert_select "input[name=?]", "baz25[foo3]"

      assert_select "input[name=?]", "baz25[foo4]"

      assert_select "textarea[name=?]", "baz25[foo5]"
    end
  end
end
