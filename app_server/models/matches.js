var Waterline = require('waterline');

var Matches = Waterline.Collection.extend({

  identity: 'matches',
  connection: 'myLocalPostgres',

  attributes: {
    id: {
    type: 'integer',
    unique: true,
    autoIncrement: true
    },
    user_id: 'integer',
    cat_id: 'integer'
  }
});

  module.exports = Matches; 