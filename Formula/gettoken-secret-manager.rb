class GettokenSecretManager < Formula
  desc "Token broker for AI agents - gettoken-secret-manager"
  homepage "https://github.com/thruput-io/gettoken"
  url "https://github.com/thruput-io/tool-credential-broker/releases/download/v0.1.263/gettoken-0.1.263.tar.gz"
  sha256 "2c1a3fdbe8ebd286c045e2b030eaae7e7fe74f92c072105810daadec81bf9100"
  license "Apache-2.0"

  depends_on "thruput-io/tap/gettoken-contract-secret-get-request"
  depends_on "thruput-io/tap/gettoken-contract-secret-get-request-version"
  depends_on "thruput-io/tap/gettoken-contract-secret-get-response"
  depends_on "thruput-io/tap/gettoken-contract-secret-put-request"
  depends_on "thruput-io/tap/gettoken-contract-secret-put-response"
  depends_on "thruput-io/tap/gettoken-format"
  depends_on "thruput-io/tap/gettoken-parse"

  def install
    (lib/"gettoken").install "components/secret-manager/secret-get"
    (lib/"gettoken").install "components/secret-manager/secret-get-version"
    (lib/"gettoken").install "components/secret-manager/secret-put"
  end

  test do
    assert_predicate lib/"gettoken/secret-get", :exist?
    assert_predicate lib/"gettoken/secret-get-version", :exist?
    assert_predicate lib/"gettoken/secret-put", :exist?
  end
end
