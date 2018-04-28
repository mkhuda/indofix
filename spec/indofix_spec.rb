RSpec.describe Indofix do
  it "has a version number" do
    expect(Indofix::VERSION).not_to be nil
  end

  it "Welcome to Indofix" do
    expect(Indofix.welcome).to eq("Welcome to Indofix")
  end

  it "Simple nomina check akhiran -an" do
    expect(Indofix.check("nomina", "sulapan")).to eq("sulap")
  end
end
