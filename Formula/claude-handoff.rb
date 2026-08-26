class ClaudeHandoff < Formula
  include Language::Python::Virtualenv

  desc "Summarize & export Claude Code sessions into one clean handoff.md"
  homepage "https://github.com/Vasilispapg/claude-handoff"
  url "https://files.pythonhosted.org/packages/9f/c7/ea3a33781c62efd6361d19860c969ea0c2f1aacf850a07b1535cb5fba137/claude_handoff-0.14.0.tar.gz"
  sha256 "55dc02a3311bbd4e095e2eb2422deec088140717c2c070370129e78edcc44a3f"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-handoff --version")
  end
end
