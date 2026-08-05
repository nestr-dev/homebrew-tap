# typed: false
# frozen_string_literal: true

# Auto-generated from .github/homebrew/nestr-cli.rb.tmpl by nestr-cli's release
# workflow (.github/workflows/release.yml) on each v* tag — do not hand-edit.
class NestrCli < Formula
  desc "Fast, composable CLI for Nestr — for terminals and agents"
  homepage "https://github.com/nestr-dev/nestr-cli"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.3/nestr-0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "f7fb49749043f68c6d754256bff7334418c5d03e35160f6a4e67860889432c4a"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.3/nestr-0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "4fe8f317a07d5111411134aa968e127818bb9fe252fd373e1df04aab72613a38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.3/nestr-0.3.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "76f001d2351ff64eac5bf8da9266bb266f351b9cda0c54735ef952fa019b0a64"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.3/nestr-0.3.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a7249b92d13807398c440329ef393be37cd6a4c48c622c482e3cadd1a1dafac4"
    end
  end

  def install
    bin.install "nestr"
  end

  test do
    assert_match "nestr #{version}", shell_output("#{bin}/nestr --version")
  end
end
