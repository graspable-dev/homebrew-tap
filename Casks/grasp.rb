cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.15.4"
  sha256 arm:   "382c95caf47157a9b6682430cd3840172b7ce78768e2ba66a030679088870bc2",
         intel: "8ef5130f3b81794ea3865c97079e0c95161191040cfba8e338dcc4b8a2f6408e"

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
