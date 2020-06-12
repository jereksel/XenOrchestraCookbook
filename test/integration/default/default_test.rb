describe port(80) do
  it { should be_listening }
end

describe service('xo-server') do
  it { should be_enabled }
  it { should be_running }
end