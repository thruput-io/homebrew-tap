class GettokenTokenService < Formula
  desc "Token broker for AI agents - gettoken-token-service"
  homepage "https://github.com/thruput-io/gettoken"
  url "https://github.com/thruput-io/tool-credential-broker/releases/download/v0.1.263/gettoken-0.1.263.tar.gz"
  sha256 "2c1a3fdbe8ebd286c045e2b030eaae7e7fe74f92c072105810daadec81bf9100"
  license "Apache-2.0"

  depends_on "thruput-io/tap/gettoken-contract-exchange-request"
  depends_on "thruput-io/tap/gettoken-contract-token-request"
  depends_on "thruput-io/tap/gettoken-contract-token-response"
  depends_on "thruput-io/tap/gettoken-exchanger"
  depends_on "thruput-io/tap/gettoken-format"
  depends_on "thruput-io/tap/gettoken-parse"

  def install
    (lib/"gettoken").install "components/token-service/token-service"
  end

  test do
    assert_predicate lib/"gettoken/token-service", :exist?
  end
end
