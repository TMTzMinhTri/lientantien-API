module.exports = {
    attributes: {
        borrower_id: {
            model: "borrowerinfo"
        },
        status: {
            type: "boolean",
            defaultsTo: false
        },
        note: {
            type: "string",
            allowNull: true
        },
        total: {
            type: "number",
        },
        created_at: {
            type: 'ref',
            columnType: 'timestamp',
            defaultsTo: new Date().toISOString()
        },
        updated_at: {
            type: 'ref',
            columnType: 'timestamp'
        }
    }
}