require 'rails_helper'

RSpec.describe "bar73s/edit", type: :view do
  before(:each) do
    @bar73 = assign(:bar73, Bar73.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar73 form" do
    render

    assert_select "form[action=?][method=?]", bar73_path(@bar73), "post" do

      assert_select "input[name=?]", "bar73[foo1]"

      assert_select "input[name=?]", "bar73[foo2]"

      assert_select "input[name=?]", "bar73[foo3]"

      assert_select "input[name=?]", "bar73[foo4]"

      assert_select "textarea[name=?]", "bar73[foo5]"
    end
  end
end
