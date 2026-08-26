class ClaudeHandoff < Formula
  include Language::Python::Virtualenv

  desc "Summarize & export Claude Code sessions into one clean handoff.md"
  homepage "https://github.com/Vasilispapg/claude-handoff"
  url "https://files.pythonhosted.org/packages/cf/78/d9fa7387fd74b1ea822cc9680bc5aef9f65ec60ead023ccfffc79bcc3bad/claude_handoff-0.16.0.tar.gz"
  sha256 "3a71b2a141987e5cadf8c6d01bc2cc009efd5b2569267a89c1737d9bd535f00f"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-handoff --version")
  end
end
