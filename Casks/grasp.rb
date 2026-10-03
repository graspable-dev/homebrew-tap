cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.51"
  sha256 arm:   "c19a6cca083e1fe13c9bc6eadb99b9f7ff2817060dec54a685f7bcf244f2d330",
         intel: "e1d912b4b8612454a511ee7c5bc8bd366647c4fa812de69ee198ace24c277fd4"

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
