cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "c69ec4964df70a4d94655cf7b1cce4174e62e23816c07b84a79495c0f0a7b8cb",
         intel: "dba214ee97a2d0bbac9f88c645481860c7bd188ce05d60a445f2c5131d05bef4"

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
