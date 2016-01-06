require 'spec_helper'
describe 'backuppc', :type => 'class' do

  context "On a Debian OS with no package name specified" do
    let :facts do
      {
        :osfamily => 'Debian'
      }
    end

    it {
      should contain_package('backuppc')
      should contain_service('backuppc')
    }
  end
  
  context "On a RedHat OS with no package name specified" do
    let :facts do
      {
        :osfamily => 'RedHat'
      }
    end

    it {
      should contain_package('backuppc')
      should contain_service('backuppc')
    }
  end

  context "On an unknown OS with no package name specified" do
    let :facts do
      {
        :osfamily => 'Darwin'
      }
    end

    it {
      expect { should raise_error(Puppet::Error) }
    }
  end

#  context "With a package name specified" do
#    let :params do
#      {
#        :package_name => 'abcd'
#      }
#    end
#
#    it {
#      should contain_package('backuppc').with( { 'name' => 'abcd' } )
#      should contain_service('backuppc').with( { 'name' => 'abcd' } )
#    }
#  end

end
