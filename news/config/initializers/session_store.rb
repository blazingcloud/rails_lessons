# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_news_session',
  :secret      => 'de899a0a91b1691257ddd548fab1d6662091ef9e02da39e6caf7a61278684098ed1bd71c3c167e76558d3d67277081b165b4f108f0dd8578e49aaed22d622496'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
