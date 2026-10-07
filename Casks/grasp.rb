cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "be530a8e7b0ffac01be2d9c38a650f2b2ae6ca82e96d4915e988199f4a405528",
         intel: "87516f2a16285a65c2b058d1638a378967a2d49db9dd9f12ef1cd6c1a7469e61"

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
