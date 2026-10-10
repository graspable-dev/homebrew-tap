cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.11"
  sha256 arm:   "f7a0fdc1d7d1ad4a837877f466a398461756c943574ed066141421fef0dc1561",
         intel: "fd244f35b1f6921e5bf0890bbb7488e875d0819821738344ef364b358ee217aa"

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
