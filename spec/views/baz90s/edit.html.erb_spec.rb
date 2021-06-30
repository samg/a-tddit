require 'rails_helper'

RSpec.describe "baz90s/edit", type: :view do
  before(:each) do
    @baz90 = assign(:baz90, Baz90.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz90 form" do
    render

    assert_select "form[action=?][method=?]", baz90_path(@baz90), "post" do

      assert_select "input[name=?]", "baz90[foo1]"

      assert_select "input[name=?]", "baz90[foo2]"

      assert_select "input[name=?]", "baz90[foo3]"

      assert_select "input[name=?]", "baz90[foo4]"

      assert_select "textarea[name=?]", "baz90[foo5]"
    end
  end
end
