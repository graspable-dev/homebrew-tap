cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.19.3"
  sha256 arm:   "62166156b078ed8784b75f9239edd3703ff043eba5a05bba9c640db896819775",
         intel: "2bc6d7694e4f64eb412f4c41a95eeab5dff7368b2d6a31e1c9f7607be55ac27e"

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
