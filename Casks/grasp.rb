cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.11.3"
  sha256 arm:   "813c3753ee67796ea96bd1cf0204dc9f0778519ad9719ceec7057a2d343e6bc5",
         intel: "6d4d3aaf64954c21e18b9a7806d340954523efa955afc516ac1820885cc18e00"

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
