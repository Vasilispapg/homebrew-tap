class ClaudeHandoff < Formula
  include Language::Python::Virtualenv

  desc "Summarize & export Claude Code sessions into one clean handoff.md"
  homepage "https://github.com/Vasilispapg/claude-handoff"
  url "https://files.pythonhosted.org/packages/51/90/712be4fbb95985c998f92783089048676cb1529ff84bc11c1d0806b231ff/claude_handoff-0.15.0.tar.gz"
  sha256 "cc03c5613f6d93d04ad58e67d708ec45a2a8e28bd09e602ffbf1a47be7d632fd"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-handoff --version")
  end
end
