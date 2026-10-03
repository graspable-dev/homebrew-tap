cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.54"
  sha256 arm:   "7377b96acde386e7383d60a520eece183b047ec663e073c0f3e804110fc700d1",
         intel: "42456f8fad8c59ace19a030772c9200463ae6e15dd5ec999df7d85e35fc8d807"

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
