require 'rails_helper'

RSpec.describe "baz85s/edit", type: :view do
  before(:each) do
    @baz85 = assign(:baz85, Baz85.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz85 form" do
    render

    assert_select "form[action=?][method=?]", baz85_path(@baz85), "post" do

      assert_select "input[name=?]", "baz85[foo1]"

      assert_select "input[name=?]", "baz85[foo2]"

      assert_select "input[name=?]", "baz85[foo3]"

      assert_select "input[name=?]", "baz85[foo4]"

      assert_select "textarea[name=?]", "baz85[foo5]"
    end
  end
end
