cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "7ff11b569d0e6f53cb544d47af4fe6794b795f52cdfbda759ca034e4248b0eb8",
         intel: "cc1b1eef13347e69ea474f970721040f0924722fe951f4668180a8c47b36d67a"

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
