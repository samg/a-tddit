require 'rails_helper'

RSpec.describe "bar38s/edit", type: :view do
  before(:each) do
    @bar38 = assign(:bar38, Bar38.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar38 form" do
    render

    assert_select "form[action=?][method=?]", bar38_path(@bar38), "post" do

      assert_select "input[name=?]", "bar38[foo1]"

      assert_select "input[name=?]", "bar38[foo2]"

      assert_select "input[name=?]", "bar38[foo3]"

      assert_select "input[name=?]", "bar38[foo4]"

      assert_select "textarea[name=?]", "bar38[foo5]"
    end
  end
end
