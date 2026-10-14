cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "ca11316e05cb23c4ea26f53dad02b755a67e9ac6203864452aa9cbc8d786bb68",
         intel: "47e5005cafd69d52c8e1c062364822285f7ee89e2a2ad3f46d0082e89dde5b96"

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
