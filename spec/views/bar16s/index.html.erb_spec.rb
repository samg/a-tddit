require 'rails_helper'

RSpec.describe "bar16s/index", type: :view do
  before(:each) do
    assign(:bar16s, [
      Bar16.create!(
        foo1: "Foo1",
        foo2: "9.99",
        foo3: 2,
        foo4: false,
        foo5: "MyText"
      ),
      Bar16.create!(
        foo1: "Foo1",
        foo2: "9.99",
        foo3: 2,
        foo4: false,
        foo5: "MyText"
      )
    ])
  end

  it "renders a list of bar16s" do
    render
    assert_select "tr>td", text: "Foo1".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
