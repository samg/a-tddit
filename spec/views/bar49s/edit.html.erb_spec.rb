require 'rails_helper'

RSpec.describe "bar49s/edit", type: :view do
  before(:each) do
    @bar49 = assign(:bar49, Bar49.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar49 form" do
    render

    assert_select "form[action=?][method=?]", bar49_path(@bar49), "post" do

      assert_select "input[name=?]", "bar49[foo1]"

      assert_select "input[name=?]", "bar49[foo2]"

      assert_select "input[name=?]", "bar49[foo3]"

      assert_select "input[name=?]", "bar49[foo4]"

      assert_select "textarea[name=?]", "bar49[foo5]"
    end
  end
end
