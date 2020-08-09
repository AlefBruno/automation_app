Before do
  $driver.start_driver
end

After do |scenario|
  sufix = ('fail' if scenario.failed?) || 'sucess'
  name = scenario.name.tr(' ', '_').downcase
  screenshot_file = screenshot("reports/#{sufix}_#{name}.png")
  embed(screenshot_file.to_s, 'image/png')
  $driver.driver_quit
end
