require 'spec_helper'
listen_port = 80

# gitがインストール済であること  
describe package('git') do  
  it { should be_installed }  
end  

# パッケージがインストールされているか
%w{make gcc gcc-c++ openssl-devel libyaml-devel}.each do |pkg|  # makeは重複しているため削除
  describe package(pkg) do
    it { should be_installed }
  end
end

# 指定のバージョンがインストールされているか  
# ruby 3.2.3
describe command('/home/ec2-user/.rbenv/shims/ruby -v') do
  its(:stdout) { should match /3\.2\.3/ }
end

# bundler 2.3.14
describe command("/home/ec2-user/.rbenv/shims/bundle -v") do
  its(:stdout) { should match /2\.3\.14/ }
end

# Rails 7.1.3.2
describe command('/home/ec2-user/.rbenv/shims/rails -v') do
  its(:stdout) { should match /7\.1\.3\.2/ }
end  

# Node 17.9.1
describe command('/home/ec2-user/.nvm/versions/node/v17.9.1/bin/node -v') do
  its(:stdout) { should match /17\.9\.1/ }
end

# Nginxがインストール済であること  
describe package('nginx') do  
  it { should be_installed }  
end

# 指定のポートをListenしているか
describe port(listen_port) do
  it { should be_listening }
end

