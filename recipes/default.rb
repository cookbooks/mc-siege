remote_file "/tmp/siege-2.72.tar.gz" do
  source "http://www.joedog.org/pub/siege/siege-2.72.tar.gz"
  mode "0644"
end

execute "compile siege" do
  command <<-EOS
cd /tmp;
tar zxvf siege-2.72.tar.gz;
cd siege-2.72;
./configure --prefix=/opt/local;
make && make install;
  EOS

  action :run
end
