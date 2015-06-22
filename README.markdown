Rack::CookieMonster
==============================================

Cookie Policy fixer middleware for IE and Safari. Woo!

Installation
-------------

    gem install rack-cookie_monster
    require 'rack/cookie_monster'
    
General Usage
-------------

In initialization stage:
    Sinatra::Base.use Rack::CookieMonster

With Rack in config.ru:
    use Rack::CookieMonster
