require 'rails_helper'

RSpec.describe "bar37s/edit", type: :view do
  before(:each) do
    @bar37 = assign(:bar37, Bar37.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar37 form" do
    render

    assert_select "form[action=?][method=?]", bar37_path(@bar37), "post" do

      assert_select "input[name=?]", "bar37[foo1]"

      assert_select "input[name=?]", "bar37[foo2]"

      assert_select "input[name=?]", "bar37[foo3]"

      assert_select "input[name=?]", "bar37[foo4]"

      assert_select "textarea[name=?]", "bar37[foo5]"
    end
  end
end
