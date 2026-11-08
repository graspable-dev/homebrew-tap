cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.9"
  sha256 arm:   "9a6d7ae53f2ed8929db2f2113d148198c17e671be61f2de347feff1a0a89d9b3",
         intel: "839414ef64c6b42b4d5dc946340fbc0c4f43eb3a6a79515c72449399dc745b20"

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
