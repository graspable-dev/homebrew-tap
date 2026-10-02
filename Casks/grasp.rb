cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.30"
  sha256 arm:   "1304077d9a50f4242473be1165b32c0f3aa01fb1eb42c55bb13f5cd46cf26706",
         intel: "60e967422c8bbea8f3b60ad2c22c9c708aa6d697a12c9eba7405e2e8d18f08ce"

  url "https://downloads.graspable.dev/releases/#{version}/grasp-#{version}-darwin-#{arch}.tar.gz",
      verified: "downloads.graspable.dev/"
  name "grasp"
  desc "Build WebXR and 3D projects with Graspable from the command-line"
  homepage "https://graspable.dev/docs/cli"

  livecheck do
    url "https://downloads.graspable.dev/grasp/latest.txt"
    regex(/\A(\d+(?:\.\d+)+)$/i)
  end

  binary "grasp/grasp"

  zap trash: "~/.graspable/cli"
end
