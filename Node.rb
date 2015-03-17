require 'formula'

class Node < Formula
  homepage 'http://github.com/arpg/Node'
  head "https://github.com/arpg/Node.git", :branch => "rm-zmqpp"

  head do
    url "https://github.com/arpg/Node.git"
    depends_on "cmake" => :build 
  end

  depends_on "zeromq" => "with-pgm"
  depends_on 'protobuf'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
__END__

