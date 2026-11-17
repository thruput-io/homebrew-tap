class GettokenContractAgentListRequest < Formula
  desc "Token broker for AI agents - gettoken-contract-agent-list-request"
  homepage "https://github.com/thruput-io/gettoken"
  url "https://github.com/thruput-io/tool-credential-broker/releases/download/v0.1.263/gettoken-0.1.263.tar.gz"
  sha256 "2c1a3fdbe8ebd286c045e2b030eaae7e7fe74f92c072105810daadec81bf9100"
  license "Apache-2.0"

  def install
    (share/"gettoken/contracts").install "contracts/agent-list-request.schema.json"
  end

  test do
    assert_predicate share/"gettoken/contracts/agent-list-request.schema.json", :exist?
  end
end
