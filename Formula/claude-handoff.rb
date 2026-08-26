class ClaudeHandoff < Formula
  include Language::Python::Virtualenv

  desc "Summarize & export Claude Code sessions into one clean handoff.md"
  homepage "https://github.com/Vasilispapg/claude-handoff"
  url "https://files.pythonhosted.org/packages/c4/b7/f25d71034c6566c2a3d7e52b6fde6d8f08e38452f6e0689444e999ca617d/claude_handoff-0.19.0.tar.gz"
  sha256 "f759b588b22045f41e22d85f6cd1e8a211fd8f8f09e2104089158fd9e1e93da7"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-handoff --version")
  end
end
