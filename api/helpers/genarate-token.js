module.exports = {
  friendlyName: 'Genarate token',
  description: '',
  inputs: {
    payload: {
      type: 'ref',
      example: '{id:1,history_id: 1}',
      required: true
    }
  },

  exits: {
    success: {
      description: 'All done.',
    },

  },


  fn: async function (inputs, exits) {
    const jwt = require('jsonwebtoken')
    const token = jwt.sign(inputs.payload, sails.config.custom.SECRET_KEY_JWT)
    return exits.success(token);
  }


};

