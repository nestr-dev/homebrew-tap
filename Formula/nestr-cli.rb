# typed: false
# frozen_string_literal: true

# Auto-generated from .github/homebrew/nestr-cli.rb.tmpl by nestr-cli's release
# workflow (.github/workflows/release.yml) on each v* tag — do not hand-edit.
class NestrCli < Formula
  desc "Fast, composable CLI for Nestr — for terminals and agents"
  homepage "https://github.com/nestr-dev/nestr-cli"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.5.2/nestr-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "9f02fb868ddfe9d6eac86d1a1575324aca48b0e1fc9b139fda03ec36989e62d6"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.5.2/nestr-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "12c08e5f712b6b478fab3bf928fcb2410d262570f2730abd4e1f3439f52952d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.5.2/nestr-0.5.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7180a7384ec2b62b06b59d950bdcb85443dfdf05db23cdccd2eae608b6d7bba9"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.5.2/nestr-0.5.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17bc216dc0da81f4b7e362f4386da3b30a048d74c76666c8d5b5becc7defd641"
    end
  end

  def install
    bin.install "nestr"
  end

  test do
    assert_match "nestr #{version}", shell_output("#{bin}/nestr --version")
  end
end
