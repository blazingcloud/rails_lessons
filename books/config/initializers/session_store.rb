# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_books_session',
  :secret      => 'c610b4365caa5d79740a90717ba62ef6e94cc07dd9fff534df9a36d60ef66f3f59dc8aa1fb7eb5332677963140ee31e833d7131774aa8179832df27e3838bc28'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
