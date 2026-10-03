cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.52"
  sha256 arm:   "e6faa5844e438b625628c7f3cd7a218d314c694fa1eb0f0678bcbc595c03b35d",
         intel: "690189072c362d8549e5f7bd25181315fc9333855a34546c15c4f5f5670c203f"

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
