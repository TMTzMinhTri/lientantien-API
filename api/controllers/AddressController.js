/**
 * AddressController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
    getDistrict: async (req, res) => {
        try {
            const district = await Address.find({
                where: {
                    address_type: 1,
                    // parent_id: 1492
                }
            })
            return res.ok({
                status: true,
                data: district
            })
        } catch (error) {
            return res.serverError({
                error: error.message,
                status: false
            })
        }
    },
    getListWard: async (req, res) => {
        try {
            const { district_id } = req.query
            const ward = await Address.find({
                where: {
                    address_type: 2,
                    parent_id: district_id
                }
            })
            res.ok({
                status: true,
                data: ward
            })
        } catch (error) {
            return res.serverError({
                error: error.message,
                status: false
            })
        }
    },
    // test: async (req, res) => {
    //     try {
    //         const { district_id } = req.query
    //         const district = await Addresses.findOne({
    //             id: district_id
    //         })
    //         const newAddress = await Address.create({
    //             name: district.name,
    //             address_type: 1,
    //             parent_id: null
    //         }).fetch()
    //         const ward = await Addresses.find({
    //             where: {
    //                 address_type: 4,
    //                 parent_id: district.id
    //             }
    //         })
    //         ward.forEach(async (item) => {
    //             await Address.create({
    //                 name: item.name,
    //                 address_type: 2,
    //                 parent_id: newAddress.id
    //             })
    //         });
    //         return res.ok({
    //             status: true,
    //             data: { district, ward }
    //         })
    //     } catch (error) {
    //         return res.serverError({
    //             error: error.message,
    //             status: false
    //         })
    //     }
    // }
};

