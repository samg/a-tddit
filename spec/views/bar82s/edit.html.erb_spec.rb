require 'rails_helper'

RSpec.describe "bar82s/edit", type: :view do
  before(:each) do
    @bar82 = assign(:bar82, Bar82.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar82 form" do
    render

    assert_select "form[action=?][method=?]", bar82_path(@bar82), "post" do

      assert_select "input[name=?]", "bar82[foo1]"

      assert_select "input[name=?]", "bar82[foo2]"

      assert_select "input[name=?]", "bar82[foo3]"

      assert_select "input[name=?]", "bar82[foo4]"

      assert_select "textarea[name=?]", "bar82[foo5]"
    end
  end
end
