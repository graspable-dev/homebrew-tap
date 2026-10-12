cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.12"
  sha256 arm:   "f14c8355707951cc3bca1ec6000806bf72729d4f303b8014ec9bc3d2cfcb0478",
         intel: "781cf171b3d3207e1448aef04b3503f8af886311c2bbd61d8b10610720b8933e"

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
