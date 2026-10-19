cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.17.6"
  sha256 arm:   "690649854f07a6a1963b1e0df34d078f0ae8cc2a7e2f95db2bf294a9397ed491",
         intel: "5a3a64dd0de07451599db270d13356f6417e155601500433868250339ec1e215"

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
