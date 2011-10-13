require 'formula'

class Mcrypt < Formula
  url 'http://sourceforge.net/projects/mcrypt/files/Libmcrypt/2.5.8/libmcrypt-2.5.8.tar.gz'
  homepage 'http://mcrypt.sourceforge.net'
  md5 '0821830d930a86a5c69110837c55b7da'

  def options
    [["--universal", "Build a universal binary."]]
  end

  def install
    system "MACOSX_DEPLOYMENT_TARGET=10.7 CFLAGS='-O3 -fno-common -arch i386 -arch x86_64' LDFLAGS='-O3 -arch i386 -arch x86_64' CXXFLAGS='-O3 -fno-common -arch i386 -arch x86_64' ./configure --disable-dependency-tracking --prefix=#{prefix} --mandir=#{man}"
    system "make -j6"
    system "make install"
  end
end
