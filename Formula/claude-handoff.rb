class ClaudeHandoff < Formula
  include Language::Python::Virtualenv

  desc "Summarize & export Claude Code sessions into one clean handoff.md"
  homepage "https://github.com/Vasilispapg/claude-handoff"
  url "https://files.pythonhosted.org/packages/d6/5a/4d62cd877c6bf798b1509240ce3adf9833d06ae39dfae2c051bf8f9e2db3/claude_handoff-0.18.0.tar.gz"
  sha256 "c3b857a2ea91862f24c71ae014746c9d47cbdf08c62a7f270e024fd4e4a2bdff"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-handoff --version")
  end
end
