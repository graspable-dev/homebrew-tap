cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.28"
  sha256 arm:   "8827a4db8a673ebd0fcc5ada8885eec6c16afe6795b1d9b9870b7d0201d2950b",
         intel: "7a9e1ef3e56ea69444d7853bebfc3914284e2cc5b0feb11df896d2d372d99b9e"

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
