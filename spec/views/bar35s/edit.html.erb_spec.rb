require 'rails_helper'

RSpec.describe "bar35s/edit", type: :view do
  before(:each) do
    @bar35 = assign(:bar35, Bar35.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar35 form" do
    render

    assert_select "form[action=?][method=?]", bar35_path(@bar35), "post" do

      assert_select "input[name=?]", "bar35[foo1]"

      assert_select "input[name=?]", "bar35[foo2]"

      assert_select "input[name=?]", "bar35[foo3]"

      assert_select "input[name=?]", "bar35[foo4]"

      assert_select "textarea[name=?]", "bar35[foo5]"
    end
  end
end
