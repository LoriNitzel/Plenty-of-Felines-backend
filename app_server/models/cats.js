var Waterline = require('waterline');

var Cats = Waterline.Collection.extend({

  identity: 'cat',
  connection: 'myLocalPostgres',

  attributes: {
    name: 'string',
    breed: 'string'

  //   owners: {
  //     collection: 'user',
  //     via: 'cats'
  // }

  }
};

module.exports = Cats;