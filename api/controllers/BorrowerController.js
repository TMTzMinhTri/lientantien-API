module.exports = {
    createNewBorrower: (req, res) => {
        const { name, address, phone_number, total, district, avata, ward, note } = req.body
        try {
            req.file('avata').upload({
                // dirname: '../../assets/images/'
                adapter: require('skipper-s3'),
                key: sails.config.custom.AWS_S3_APIKEY,
                secret: sails.config.custom.AWS_S3_SECRET_KEY,
                bucket: sails.config.custom.AWS_S3_BUCKET,
            }, async (err, uploadedFiles) => {
                let avata
                if (err) {
                    return res.serverError({
                        error: err.message,
                        message, status: false
                    });
                }
                if (uploadedFiles.length === 0) {
                    avata = sails.helpers.gravatar.getAvatarUrl.with({
                        emailAddress: "tmtzminhtri@gmail.com",
                        gravatarSize: 400,
                        rating: "PG",
                        useHttps: true
                    })
                }
                else {
                    // avata = `http://localhost:5000/${uploadedFiles[0].fd.split('/').splice(4, 4).join('/')}`
                    avata = `${sails.config.custom.AWS_s3_URL_IMAGE}/${uploadedFiles[0].fd}`
                }

                const borrowInfo = await BorrowerInfo.create({
                    name,
                    address,
                    phone_number,
                    total,
                    avata,
                    district, ward, note
                }).fetch()

                return res.ok({
                    data: borrowInfo,
                    status: true
                })
            })
        } catch (error) {
            return res.serverError({
                error: error.message,
                status: false
            })
        }
    },
    getListBorrower: async (req, res) => {
        try {
            const borrowInfo = await BorrowerInfo.find({
                where: {
                    status: true
                }
            })
            return res.json({ data: borrowInfo, status: true })
        } catch (error) {
            return res.serverError({ error: error.message, status: false })
        }
    },
    getBorrowerDeleted: async (req, res) => {
        try {
            const borrowInfo = await BorrowerInfo.find({
                where: {
                    status: false
                }
            })
            return res.json({ data: borrowInfo, status: true })
        } catch (error) {
            return res.serverError({ error: error.message, status: false })
        }
    },
    getDetailsBorrower: async (req, res) => {
        const { user_id } = req.params
        try {
            const user = await BorrowerInfo.findOne({ id: user_id })
                .populate("history", {
                    limit: 20,
                }).populate("district").populate("ward")
            res.ok({
                status: true,
                data: user
            })
        } catch (error) {
            return res.serverError({ error: error.message, status: false })
        }
    },
    payTheMoney: async (req, res) => {
        try {
            const { user_id } = req.params
            const { total, note, date } = req.body
            const history = await BorrowHistory.create({ borrower_id: user_id, status: true, note, total: total, created_at: date && new Date(date).toISOString() }).fetch()
            res.ok({
                status: true,
                data: history
            })
        } catch (error) {
            return res.serverError({ error: error.message, status: false })
        }
    },
    getBorrowerNotPay: async (req, res) => {
        const { from } = req.query

        try {
            const date = new Date(from).toISOString()
            const borrowInfo = await BorrowerInfo.find().populate('BorrowHistory', {
                where: {
                    created_at: date
                }
            })

        } catch (error) {

        }
    },
    beginNewDay: async (req, res) => {
        try {
            const borrowerInfo = await BorrowerInfo.find()
            borrowInfo.forEach(element => {

            });
            return res.ok(borrowerInfo)
        } catch (error) {
            return res.serverError({ error: error.message, status: false })
        }
    },
    getListHistoryByDate: async (req, res) => {
        try {
            const { from } = req.query
            const date = new Date(from)
            const begin = new Date(date).toISOString()
            const end = new Date(date.setDate(date.getDate() + 1)).toISOString()
            const history = await BorrowHistory.find({
                created_at: { ">=": begin, "<": end }
            }).populate('borrower_id').sort('id DESC')
            return res.ok({
                status: true,
                data: history
            })
        } catch (error) {
            res.badRequest({ error: error.message })
        }
    },
    updateBorrowerInfo: async (req, res) => {
        try {
            const { user_id } = req.query
            const { name, address, phone_number, total, district, ward } = req.body
            const borrowInfo = await BorrowerInfo.updateOne({ id: user_id }).set({
                name, address, phone_number, district, total, ward, updated_at: new Date().toISOString()
            })
            res.ok({
                status: true,
                data: borrowInfo
            })
        } catch (error) {
            return res.serverError({
                error: error.message,
                status: false
            })
        }
    },
    deleteBorrowerInfo: async (req, res) => {
        try {
            const { user_id } = req.query
            const borrowInfo = await BorrowerInfo.updateOne({ id: user_id }).set({
                status: false,
                deleted_at: new Date().toISOString()
            })
            res.ok({
                status: true,
                data: borrowInfo
            })
        } catch (error) {
            return res.serverError({
                error: error.message,
                status: false
            })
        }
    },
    updateUserPay: async (req, res) => {
        try {
            const { payInfo } = req.body
            const borrowHistory = await BorrowHistory.updateOne({ id: payInfo.id }).set({
                note: payInfo.note,
                total: payInfo.price
            })
            res.ok({
                status: true,
                data: {
                    id: borrowHistory.id,
                    name: payInfo.name,
                    price: borrowHistory.total,
                    note: borrowHistory.note
                }
            })
        } catch (error) {
            return res.serverError({
                error: error.message,
                status: false
            })
        }
    },
    deleteUserPay: async (req, res) => {
        try {
            const { history_id } = req.params
            const borrowHistory = await BorrowHistory.destroyOne({ id: history_id })
            res.ok({
                status: true,
                data: borrowHistory
            })
        } catch (error) {
            return res.serverError({
                error: error.message,
                status: false
            })
        }
    }
}