# OmniAuth Klarna

This is the official OmniAuth strategy to authenticate with Klarna via OAuth2.

In order to use this strategy you will need to register for an API key
and secret. Contact omniauth@klarna.com to register.

## Basic Usage

    use OmniAuth::Builder do
      provider :klarna, ENV['KLARNA_KEY'], ENV['KLARNA_SECRET']
    end

## License

Copyright 2013 Klarna AB

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

   <http://www.apache.org/licenses/LICENSE-2.0>

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
