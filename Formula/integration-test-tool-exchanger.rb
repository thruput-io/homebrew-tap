class IntegrationTestToolExchanger < Formula
  desc "Token broker for AI agents - integration-test-tool-exchanger"
  homepage "https://github.com/thruput-io/gettoken"
  url "https://github.com/thruput-io/tool-credential-broker/releases/download/v0.1.263/gettoken-0.1.263.tar.gz"
  sha256 "2c1a3fdbe8ebd286c045e2b030eaae7e7fe74f92c072105810daadec81bf9100"
  license "Apache-2.0"

  depends_on "thruput-io/tap/gettoken-exchanger"

  def install
    (lib/"gettoken/exchangers").install "tools/integration-test-tool/privileged/lib/exchangers/integrationtest.sh"
  end

  test do
    assert_predicate lib/"gettoken/exchangers/integrationtest.sh", :exist?
  end
end
