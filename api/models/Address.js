/**
 * Addresses.js
 *
 * @description :: A model definition represents a database table/collection.
 * @docs        :: https://sailsjs.com/docs/concepts/models-and-orm/models
 */

module.exports = {
  attributes: {
    name: {
      type: "string",
      columnType: 'text',
      allowNull: true
    },
    address_type: {
      type: "number",
      columnType: 'real',
      allowNull: true
    },
    parent_id: {
      type: "number",
      columnType: 'real',
      allowNull: true
    },
    created_at: {
      type: 'ref',
      columnType: 'timestamp',
      columnName: "created_at",
      defaultsTo: new Date().toISOString()
    },
    updated_at: {
      type: 'ref',
      columnType: 'timestamp',
      columnName: "updated_at"
    }
  },
  customToJSON: function () {
    return _.omit(this, ['address_type', 'parent_id', 'created_at', 'updated_at'])
  },
};

