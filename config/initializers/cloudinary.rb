unless Rails.env.production?
  CarrierWave.configure { |config| config.enable_processing = false }
end