# frozen_string_literal: true

describe 'Output' do
  context '#to_stdout' do
    it { expect { puts 'Message' }.to output.to_stdout }
    it { expect { puts 'Message' }.to output("Message\n").to_stdout }
    it { expect { puts 'Message' }.to output(/Message/).to_stdout }
  end

  context '#to_stderr' do
    it { expect { warn 'Message' }.to output.to_stderr }
    it { expect { warn 'Message' }.to output("Message\n").to_stderr }
    it { expect { warn 'Message' }.to output(/Message/).to_stderr }
  end
end
