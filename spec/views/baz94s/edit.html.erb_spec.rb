require 'rails_helper'

RSpec.describe "baz94s/edit", type: :view do
  before(:each) do
    @baz94 = assign(:baz94, Baz94.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz94 form" do
    render

    assert_select "form[action=?][method=?]", baz94_path(@baz94), "post" do

      assert_select "input[name=?]", "baz94[foo1]"

      assert_select "input[name=?]", "baz94[foo2]"

      assert_select "input[name=?]", "baz94[foo3]"

      assert_select "input[name=?]", "baz94[foo4]"

      assert_select "textarea[name=?]", "baz94[foo5]"
    end
  end
end
