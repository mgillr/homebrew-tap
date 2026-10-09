# Homebrew formula for hivevault. Lives in the tap repository mgillr/homebrew-tap as Formula/hivevault.rb
# (see packaging/README.md). Installs the npm package into the formula's libexec and links the `hivevault` command.
#
# After each npm release, update `url` and `sha256`:
#   curl -sLo hivevault.tgz "https://registry.npmjs.org/hivevault/-/hivevault-<version>.tgz" && shasum -a 256 hivevault.tgz
class Hivevault < Formula
  desc "Shared, never-forgetting memory for every AI session (MCP server, git, CRDT)"
  homepage "https://github.com/mgillr/hivevault"
  url "https://registry.npmjs.org/hivevault/-/hivevault-0.3.1.tgz"
  sha256 "42dd2a251790651c98a66050ffa676023ee7be3052b586f565f7679b57891cf9"
  license "Apache-2.0"

  depends_on "git"
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<~EOS
      Create your memory and connect your AI tools:
        hivevault init
      The daemon serves http://127.0.0.1:7788 (next free port if taken). Run `hivevault doctor` any time.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hivevault --version")
  end
end
