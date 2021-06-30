require 'rails_helper'

RSpec.describe "bar76s/edit", type: :view do
  before(:each) do
    @bar76 = assign(:bar76, Bar76.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar76 form" do
    render

    assert_select "form[action=?][method=?]", bar76_path(@bar76), "post" do

      assert_select "input[name=?]", "bar76[foo1]"

      assert_select "input[name=?]", "bar76[foo2]"

      assert_select "input[name=?]", "bar76[foo3]"

      assert_select "input[name=?]", "bar76[foo4]"

      assert_select "textarea[name=?]", "bar76[foo5]"
    end
  end
end
