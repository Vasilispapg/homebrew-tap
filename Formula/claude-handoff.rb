class ClaudeHandoff < Formula
  include Language::Python::Virtualenv

  desc "Summarize & export Claude Code sessions into one clean handoff.md"
  homepage "https://github.com/Vasilispapg/claude-handoff"
  url "https://files.pythonhosted.org/packages/c3/9d/268d2698313edded9096cdf6e1f09853e936cf937f4dc46662363b7ecfdc/claude_handoff-0.11.0.tar.gz"
  sha256 "ac43db350e8a5ba122080d27c0ac499c172b474d1031731640a7d31e156b1562"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-handoff --version")
  end
end
