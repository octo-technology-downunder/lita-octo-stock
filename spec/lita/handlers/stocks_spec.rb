require "spec_helper"

describe Lita::Handlers::Stocks, lita_handler: true do
  it { routes_command("action octo").to(:stock_info) }
  it { doesnt_route_command("action").to(:stock_info) }

  it "checks general action octo" do
    send_command "action octo"
    expect(replies.last).to include("ALOCT")
    expect(replies.last).to include("Octo Technology")
    expect(replies.last).to include("MktCap")
  end
end
