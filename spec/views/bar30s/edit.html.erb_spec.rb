require 'rails_helper'

RSpec.describe "bar30s/edit", type: :view do
  before(:each) do
    @bar30 = assign(:bar30, Bar30.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar30 form" do
    render

    assert_select "form[action=?][method=?]", bar30_path(@bar30), "post" do

      assert_select "input[name=?]", "bar30[foo1]"

      assert_select "input[name=?]", "bar30[foo2]"

      assert_select "input[name=?]", "bar30[foo3]"

      assert_select "input[name=?]", "bar30[foo4]"

      assert_select "textarea[name=?]", "bar30[foo5]"
    end
  end
end
