require 'appium_lib'
require 'cpf_faker'
require 'faker'
require 'ostruct'
require 'pry'
require 'rspec'
require 'selenium-webdriver'

Dir[File.join(File.dirname(__FILE__), 'common/*.rb')].sort.each { |file| require_relative file }
Dir[File.join(File.dirname(__FILE__), 'spec_instances/**/*.rb')].sort.each { |file| require file }

World(Commons)
Faker::Config.locale = 'pt-BR'

def load_yaml_file(path)
  YAML.load_file(File.dirname(__FILE__) + path)
end

DEVICE_TYPE ||= ENV['DEVICE_TYPE']
EMULATORS_DEVICES = load_yaml_file('/config/emulators_devices.yaml')[DEVICE_TYPE]

raise 'É Obrigatório informar um dispositivo para Execução dos Testes !!!' if EMULATORS_DEVICES.nil?

MSG_APP = load_yaml_file('/config/message.yaml')

Appium::Driver.new(EMULATORS_DEVICES, true)
Appium.promote_appium_methods Object
