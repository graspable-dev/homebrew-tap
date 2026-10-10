cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.5"
  sha256 arm:   "ad5497f98096dea9eaed41afedfe2027a00fc5b33c49737229901e4ef3310c79",
         intel: "3a6bb969d790af0f86d6c96e28d65bbdc5edf3fb9380e1f02ad3b49b788769b4"

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
