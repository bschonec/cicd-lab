# frozen_string_literal: true

require 'spec_helper'

describe 'cicd_lab' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      #context 'check mmc application is installed' do
      it { is_expected.to contain_package('mmc').with_ensure('installed') }
      #end

      it { is_expected.to compile.with_all_deps }

      it { is_expected.to contain_file('/tmp') }
      #it { is_expected.to contain_user('brian').with( 'ensure' => 'present',) }
    end
  end
end
