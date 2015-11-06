require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "Polipo service" do

  it "is listening on port 8123" do
    expect(port(8123)).to be_listening
  end

  it "has a running service of polipo" do
    expect(service("polipo")).to be_running
  end

end
