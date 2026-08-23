class ClaudeHandoff < Formula
  include Language::Python::Virtualenv

  desc "Summarize & export Claude Code sessions into one clean handoff.md"
  homepage "https://github.com/Vasilispapg/claude-handoff"
  url "https://files.pythonhosted.org/packages/69/85/ddac55b819aa09bc8b109330c7c72e92848dca10140a2bdc1411c173a74e/claude_handoff-0.8.0.tar.gz"
  sha256 "8f02e68262aa550ad93b7702dd60a3af241e6e0ddb26b48f5021698416710cd6"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-handoff --version")
  end
end
