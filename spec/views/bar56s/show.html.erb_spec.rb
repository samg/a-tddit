require 'rails_helper'

RSpec.describe "bar56s/show", type: :view do
  before(:each) do
    @bar56 = assign(:bar56, Bar56.create!(
      foo1: "Foo1",
      foo2: "9.99",
      foo3: 2,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Foo1/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
  end
end
