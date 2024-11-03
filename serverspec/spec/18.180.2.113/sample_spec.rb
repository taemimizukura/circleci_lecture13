require 'spec_helper'

listen_port = 80

# Nginxがインストール済であること  
describe package('nginx') do  
  it { should be_installed }  
  end

# 指定のポートをListenしているか
describe port(listen_port) do
  it { should be_listening }
  end

# curlでHTTPアクセスして200 OKが返ってくるか確認する  
describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end 

# gitがインストール済であること  
describe package('git') do  
      it { should be_installed }  
end  

# 指定のバージョンがインストールされているか  
describe command('/home/ec2-user/.rbenv/shims/ruby -v') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /3\.2\.3/ }
end

# bundler 2.3.14
describe command("/home/ec2-user/.rbenv/shims/bundle _2.3.14_ -v") do
  its(:stdout) { should match /2\.3\.14/ }
end

# Rails 7.1.3.2
describe command('/home/ec2-user/.rbenv/shims/rails -v') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /7\.1\.3\.2/ }
end  

# Node 17.9.1
describe command('/home/ec2-user/.nvm/versions/node/v17.9.1/bin/node -v') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /17\.9\.1/ }
end

# パッケージがインストールされているか
%w{make gcc gcc-c++ make openssl-devel libyaml-devel}.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end