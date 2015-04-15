Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['536874203117335'], ENV['d4a7d7c84b74c039a3229907c2eaf9f9'],
           scope: 'public_profile', display: 'page', image_size: 'square'
end 

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['qKfbS12oBohYDz7eIXDKWfCSo'], ENV['GPV9QmTpQhf6pS4a0GaoAZ50fQMLRq2LLcTxad9fOOMeK4m1do'], image_size: 'normal' 
  end