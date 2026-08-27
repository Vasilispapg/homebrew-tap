class ClaudeHandoff < Formula
  include Language::Python::Virtualenv

  desc "Summarize & export Claude Code sessions into one clean handoff.md"
  homepage "https://github.com/Vasilispapg/claude-handoff"
  url "https://files.pythonhosted.org/packages/2d/c7/f8df891e200556bf7dc744e976d94a918eab7585405c717047b5211c0917/claude_handoff-0.20.0.tar.gz"
  sha256 "72329901b1dc05c970cefcd47008fd2e7b826698affef21e54d7126089a3ece7"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-handoff --version")
  end
end
