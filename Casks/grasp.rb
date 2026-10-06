cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.10.7"
  sha256 arm:   "87545b2f28dabd8bd881e6fe187ed367c91269d15476e37fc4074f37b85dfa43",
         intel: "b05eb17ec619425186b171742092d2b1c2492a177c43fb2f700c39e6bd5cab0f"

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
