RSpec.describe Indofix do
  it "has a version number" do
    expect(Indofix::VERSION).not_to be nil
  end

  it "Welcome to Indofix" do
    expect(Indofix.welcome).to eq("Welcome to Indofix")
  end

  it "Array Result Check" do
    expect(Indofix.check("nomina", "sulapan")).to be_a_kind_of(Array)
    expect(Indofix.check("verba", "memasangi")).to be_a_kind_of(Array)
    expect(Indofix.check("kpst", "ngejos")).to be_a_kind_of(Array)
    expect(Indofix.check("other", "keterlaluan")).to be_a_kind_of(Array)
  end

  
  it "Nomina Single Result Check" do
    expect(Indofix.check("nomina", "sulapan")).to eq(["sulap"])
  end

end
