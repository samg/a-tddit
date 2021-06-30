require 'rails_helper'

RSpec.describe "baz92s/edit", type: :view do
  before(:each) do
    @baz92 = assign(:baz92, Baz92.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz92 form" do
    render

    assert_select "form[action=?][method=?]", baz92_path(@baz92), "post" do

      assert_select "input[name=?]", "baz92[foo1]"

      assert_select "input[name=?]", "baz92[foo2]"

      assert_select "input[name=?]", "baz92[foo3]"

      assert_select "input[name=?]", "baz92[foo4]"

      assert_select "textarea[name=?]", "baz92[foo5]"
    end
  end
end
