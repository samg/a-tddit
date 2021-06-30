require 'rails_helper'

RSpec.describe "bar23s/edit", type: :view do
  before(:each) do
    @bar23 = assign(:bar23, Bar23.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar23 form" do
    render

    assert_select "form[action=?][method=?]", bar23_path(@bar23), "post" do

      assert_select "input[name=?]", "bar23[foo1]"

      assert_select "input[name=?]", "bar23[foo2]"

      assert_select "input[name=?]", "bar23[foo3]"

      assert_select "input[name=?]", "bar23[foo4]"

      assert_select "textarea[name=?]", "bar23[foo5]"
    end
  end
end
