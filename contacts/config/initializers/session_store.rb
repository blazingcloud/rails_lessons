# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_contacts_session',
  :secret      => '32c2c376dd54ed26766044f6377fa49ac6ff9625a4e9076c665758da6492fec0a5c1f251ae719092aa1abae0a4989cc13c4902865954e894cf30c7c96f2d92c9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
