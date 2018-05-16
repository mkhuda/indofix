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

  it "Stupid Check" do
    expect(Indofix.stupid_check("andaikan")).to be_a_kind_of(Hash)
  end

  it "Nomina Single Result Check" do
    expect(Indofix.check("nomina", "sulapan")).to eq(["sulap"])
  end

  # Indofix::Error Check
  it "Indofix Error Raise On Check Method without Params" do
    expect { Indofix.check("", "sulapan") }.to raise_error(Indofix::Error)
  end

  it "Indofix Error Raise On Check Method without String Params" do
    expect { Indofix.check("nomina", "") }.to raise_error(Indofix::Error)
  end

  it "Indofix Error Raise On Check Method with empty params" do
    expect { Indofix.check("", "") }.to raise_error(Indofix::Error)
  end
  
  it "Indofix Error Raise On Stupid Check Method with empty params" do
    expect { Indofix.stupid_check("") }.to raise_error(Indofix::Error)
  end


end
