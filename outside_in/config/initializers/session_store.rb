# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_outside_in_session',
  :secret      => '9a1946708e0347b0bb3044aca62c19b84dc961df78b6300c06caed8634780aaf53ef1d37d57f95c28a48b6f81efb1db207f8c7a9bbea68f868f2073a8379cdab'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
