cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.18.1"
  sha256 arm:   "b30ceb80f4dd474fece861bd7def50f366ac8e778086cc7180263c03d6baf6fa",
         intel: "de87ffab142c0ce4c53c79d0a42dc2b42e485e2f34dc46d5177de9341507e8cc"

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
