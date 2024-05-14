
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://github.com/nicholasjackson/kapsule"
  version "0.0.8"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kapsule-labs/kapsule/releases/download/0.0.8/kapsule_0.0.8_darwin_x86_64.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kapsule-labs/kapsule/releases/download/0.0.8/kapsule_0.0.8_darwin_arm64.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kapsule-labs/kapsule/releases/download/0.0.8/kapsule_0.0.8_linux_x86_64.tar.g"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5  /jumppad"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kapsule-labs/kapsule/releases/download/0.0.8/kapsule_0.0.8_linux_arm64.tar.giz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "kapsule"
  end
end
