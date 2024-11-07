require 'spec_helper'
listen_port = 80

# gitがインストール済であること  
describe package('git') do  
  it { should be_installed }  
end  

# パッケージがインストールされているか
%w{gcc gcc-c++ openssl-devel libyaml-devel}.each do |pkg|  
  describe package(pkg) do
    it { should be_installed }
  end
end

# 指定のバージョンがインストールされているか  
# ruby 3.2.3
describe command('/home/ec2-user/.rbenv/shims/ruby -v') do
  its(:stdout) { should match /3\.2\.3/ }
end

# Rails 7.1.3.2
describe command('/home/ec2-user/.rbenv/shims/rails -v') do
  its(:stdout) { should match /7\.1\.3\.2/ }
end  

# Node 17.9.1
describe command('source /etc/profile.d/nvm.sh && /home/ec2-user/.nvm/versions/node/v17.9.1/bin/node -v') do
  its(:stdout) { should match /17\.9\.1/ }
end

# Yarn 1.22.19
describe command('source /etc/profile.d/yarn.sh && /home/ec2-user/.yarn/bin/yarn -v') do
  its(:stdout) { should match /1\.22\.19/ }
end

# Bundler 2.3.14
describe command("cd /home/ec2-user/raisetech-live8-sample-app && /home/ec2-user/.rbenv/shims/bundle -v") do
  its(:stdout) { should match /2\.3\.14/ }
end

# Nginxがインストール済であること  
describe package('nginx') do  
  it { should be_installed }  
end

# 指定のポートをListenしているか
describe port(listen_port) do
  it { should be_listening }
end
