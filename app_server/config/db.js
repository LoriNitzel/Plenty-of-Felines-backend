// Require any waterline compatible adapters here

var postgresqlAdapter = require('sails-postgresql');

// Build A Config Object
var config = {

  // Setup Adapters
  // Creates named adapters that have been required
  adapters: {
    'default': postgresqlAdapter,
    postgres: postgresqlAdapter
  },

  // Build Connections Config
  // Setup connections using the named adapter configs
  // @TODO: the connections will change upon deployment 
  connections: {

    myLocalPostgres: {
      adapter: 'postgres',
      host: 'localhost',
      database: 'POF'
    }
  },

  defaults: {
    migrate: 'alter'
  }

};

module.exports = config;