require 'rails_helper'

RSpec.describe "baz18s/edit", type: :view do
  before(:each) do
    @baz18 = assign(:baz18, Baz18.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz18 form" do
    render

    assert_select "form[action=?][method=?]", baz18_path(@baz18), "post" do

      assert_select "input[name=?]", "baz18[foo1]"

      assert_select "input[name=?]", "baz18[foo2]"

      assert_select "input[name=?]", "baz18[foo3]"

      assert_select "input[name=?]", "baz18[foo4]"

      assert_select "textarea[name=?]", "baz18[foo5]"
    end
  end
end
