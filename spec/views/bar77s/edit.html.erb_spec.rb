require 'rails_helper'

RSpec.describe "bar77s/edit", type: :view do
  before(:each) do
    @bar77 = assign(:bar77, Bar77.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar77 form" do
    render

    assert_select "form[action=?][method=?]", bar77_path(@bar77), "post" do

      assert_select "input[name=?]", "bar77[foo1]"

      assert_select "input[name=?]", "bar77[foo2]"

      assert_select "input[name=?]", "bar77[foo3]"

      assert_select "input[name=?]", "bar77[foo4]"

      assert_select "textarea[name=?]", "bar77[foo5]"
    end
  end
end
