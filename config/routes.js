/**
 * Route Mappings
 * (sails.config.routes)
 *
 * Your routes tell Sails what to do each time it receives a request.
 *
 * For more information on configuring custom routes, check out:
 * https://sailsjs.com/anatomy/config/routes-js
 */
module.exports.routes = {
    'GET /*': {
        skipAssets: false,
        fn: [
            require('serve-static')(require('path').resolve(__dirname, '../', 'assets/'), {
                maxAge: process.env.NODE_ENV !== 'production' ? 1 : 31557600000,
            })
        ]
    },
    'GET /api/test': { controller: 'UserController', action: 'test' },
    'POST /api/send': { controller: 'UserController', action: 'send' },
    'POST /api/login': { controller: 'UserController', action: 'login' },
    'POST /api/signin': { controller: 'UserController', action: 'signin' },
    'POST /api/register': { controller: 'UserController', action: 'register' },

    "POST /api/createNewBorrower": { controller: "BorrowerController", action: "createNewBorrower" },
    "GET /api/getAllBorrowInfo": { controller: "BorrowerController", action: "getListBorrower" },
    "GET /api/getBorrowerDeleted": { controller: "BorrowerController", action: "getBorrowerDeleted" },

    "GET /api/getListDistrict": { controller: "AddressController", action: "getDistrict" },
    "GET /api/getListWard": { controller: "AddressController", action: "getListWard" },
    "GET /api/getDetail/:user_id": { controller: "BorrowerController", action: "getDetailsBorrower" },
    "POST /api/pay-the-money/:user_id": { controller: "BorrowerController", action: "payTheMoney" },
    "GET /api/begin-new-day": { controller: "BorrowerController", action: "beginNewDay" },
    "GET /api/list-history-by-date": { controller: "BorrowerController", action: "getListHistoryByDate" },
    "PUT /api/updateBorrowerInfo": { controller: "BorrowerController", action: "updateBorrowerInfo" },
    "DELETE /api/deleteBorrowerInfo": { controller: "BorrowerController", action: "deleteBorrowerInfo" },
    "PUT /api/updateUserPay": { controller: "BorrowerController", action: "updateUserPay" },
    "DELETE /api/deleteUserPay/:history_id": { controller: "BorrowerController", action: "deleteUserPay" },

};
