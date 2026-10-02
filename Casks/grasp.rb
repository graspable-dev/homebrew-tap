cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.29"
  sha256 arm:   "12ba087f390a641cc50a8e4eb20ae467f12bdc1ba008f5b4362b66e59f44ecdb",
         intel: "46f5c3f402b67c9d5f5cf2023e4006d1bab8379212ed4987308c7fbc688ed150"

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
