class Hotseat < Formula
  desc "Terminal dashboard and CLI for Claude Code and Codex accounts, their quota, and work a usage limit stopped"
  homepage "https://github.com/Maxteabag/hotseat"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maxteabag/hotseat/releases/download/v0.2.0/hotseat-0.2.0-darwin-arm64"
      sha256 "6ded602e7a34595dace3e3e5bff2ece0694c725df120558d9ebd967a7d4a59bd"
    end
    on_intel do
      url "https://github.com/Maxteabag/hotseat/releases/download/v0.2.0/hotseat-0.2.0-darwin-amd64"
      sha256 "a24c1e629d9e009eb1bc95bedcee37de54cf07f47fdab954185b952eadf352aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Maxteabag/hotseat/releases/download/v0.2.0/hotseat-0.2.0-linux-arm64"
      sha256 "9ef2a62a083b16987df09a31e20eb52013eb5c01963f75f2bb788ca957e110b3"
    end
    on_intel do
      url "https://github.com/Maxteabag/hotseat/releases/download/v0.2.0/hotseat-0.2.0-linux-amd64"
      sha256 "8b52a87a95a9ce02946435b36fe8af32ea0f0c1f9479b98d8d251f39b2c3c991"
    end
  end

  def install
    bin.install Dir["hotseat-*"].first => "hotseat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hotseat --version")
  end
end
