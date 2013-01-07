# OmniAuth Klarna

This is the official OmniAuth strategy to authenticate with Klarna via OAuth2.

In order to use this strategy you will need to register for an API key and secret. You can do this over at http://some.link.com.

## Basic Usage

    use OmniAuth::Builder do
      provider :klarna, ENV['KLARNA_KEY'], ENV['KLARNA_SECRET']
    end

## License

The omniauth-klarna project is released under Apache License, Version 2.0 (http://www.apache.org/licenses/)
