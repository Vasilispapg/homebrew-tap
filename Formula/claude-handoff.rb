class ClaudeHandoff < Formula
  include Language::Python::Virtualenv

  desc "Summarize & export Claude Code sessions into one clean handoff.md"
  homepage "https://github.com/Vasilispapg/claude-handoff"
  url "https://files.pythonhosted.org/packages/e4/b2/55f863629ade328de0e84eff30854b170cd6e8474308e25c6e98e3c61f11/claude_handoff-0.17.0.tar.gz"
  sha256 "61507750198d599ec87d7c65ad42add3b6c773b77b68d9cbe0a183cc1c7b8a9e"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-handoff --version")
  end
end
