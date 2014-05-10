require 'spec_helper'

describe 'httpd_test_custom::service on fedora-20' do
  let(:fedora_20_custom_stepinto_run) do
    ChefSpec::Runner.new(
      :step_into => 'httpd_service',
      :platform => 'fedora',
      :version => '20'
      ) do |node|
      node.set['httpd']['service']['resource_name'] = 'fedora_20_custom_stepinto'
    end.converge('httpd_test_custom::service')
  end

  context 'when using custom parameters' do
    it 'creates httpd_service[fedora_20_custom]' do
      expect(fedora_20_custom_stepinto_run).to create_httpd_service('fedora_20_custom_stepinto').with(
        :version => '2.4',
        :listen_addresses => nil,
        :listen_ports => %w(80 443),
        :contact => 'webmaster@localhost',
        :timeout => '400',
        :keepalive => true,
        :keepaliverequests => '100',
        :keepalivetimeout => '5'
        )
    end
  end
end