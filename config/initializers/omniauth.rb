OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
	provider :google_oauth2,
	'865075030452-ui1lsmkii6jm2126ocab48j79f5dc8ls.apps.googleusercontent.com',
	'bN-FnCaRtEt9pSjuNYjM7iBn',
	{
		client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}},
		hd: 'wesleyan.edu',
  		skip_jwt: true
	}
end
