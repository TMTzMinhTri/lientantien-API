module.exports = {
    attributes: {
        name: {
            type: "string",
            columnName: "name"
        },
        address: {
            type: "string",
            columnName: "address"
        },
        district: {
            model: "address"
        },
        ward: {
            model: "address"
        },
        phone_number: {
            type: "string",
            columnName: "phone_number"
        },
        total: {
            type: "number",
            columnName: "total"
        },
        avata: {
            type: "string",
            columnName: "avata"
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
        },
        history: {
            collection: 'borrowhistory',
            via: "borrower_id"
        }
    }
}