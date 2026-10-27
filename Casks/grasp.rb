cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.19.7"
  sha256 arm:   "c8c80da2f12ac97eaae26f220fdc637e9f5d2c893941edcfb42ea035d26a18e7",
         intel: "12709a51259549d918c7ef86bc13a7fca3ba8220c8d576012d2a6ab5a6b066e9"

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
