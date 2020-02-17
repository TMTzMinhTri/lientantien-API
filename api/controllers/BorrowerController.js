module.exports = {
    createNewBorrower: (req, res) => {
        const { name, address, phone_number, total, district, avata, ward } = req.body
        console.log(avata)
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
                    district, ward
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
        const { page } = req.query
        try {
            const borrowInfo = await BorrowerInfo.find().limit(50).skip((page - 1) * 10)
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
            const { total, note } = req.body
            const history = await BorrowHistory.create({ borrower_id: user_id, status: true, note, total: total }).fetch()
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
    }
}