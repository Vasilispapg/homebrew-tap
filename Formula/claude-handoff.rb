class ClaudeHandoff < Formula
  include Language::Python::Virtualenv

  desc "Summarize & export Claude Code sessions into one clean handoff.md"
  homepage "https://github.com/Vasilispapg/claude-handoff"
  url "https://files.pythonhosted.org/packages/0d/36/a9f669356525f23bc7d109aa999cbbc333544f3b75693e09d581d06a895a/claude_handoff-0.13.0.tar.gz"
  sha256 "857fb68ad9710e6772c28e0677394132fcbb5e2267b3ede68e90782757bcdb77"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-handoff --version")
  end
end
