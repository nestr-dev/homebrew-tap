# typed: false
# frozen_string_literal: true

# Auto-generated from .github/homebrew/nestr-cli.rb.tmpl by nestr-cli's release
# workflow (.github/workflows/release.yml) on each v* tag — do not hand-edit.
class NestrCli < Formula
  desc "Fast, composable CLI for Nestr — for terminals and agents"
  homepage "https://github.com/nestr-dev/nestr-cli"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.4.1/nestr-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "3396755c20bec426cd5d54c92f5cd3ce327d102a992490e713544d1f4c1ff7f3"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.4.1/nestr-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "8e749500bd1fb8941fa6e4e683c8a04b651d0d8e5a3ea3591608fada0eea4e22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.4.1/nestr-0.4.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c98459320cc6a363a2e28ef072161e2e1abb4fa846e92edea5dc23ceaccb092"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.4.1/nestr-0.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7fae82b3cfc20be3af17abce0000d590824e2147589ccaef517b87d0a7aef50"
    end
  end

  def install
    bin.install "nestr"
  end

  test do
    assert_match "nestr #{version}", shell_output("#{bin}/nestr --version")
  end
end
