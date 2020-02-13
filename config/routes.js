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
    // 'GET /api/v1/auth/facebook': { controller: 'PassportController', action: 'facebookAuth' },
    // 'GET /api/v1/auth/facebook/callback': { controller: 'PassportController', action: 'facebookCallback' },
    "POST /api/createNewBorrower": { controller: "BorrowerController", action: "createNewBorrower" },
    "GET /api/getAllBorrowInfo": { controller: "BorrowerController", action: "getListBorrower" },

    "GET /api/getListDistrict": { controller: "AddressController", action: "getDistrict" },
    "GET /api/getListWard": { controller: "AddressController", action: "getListWard" },
    "GET /api/getDetail/:user_id": { controller: "BorrowerController", action: "getDetailsBorrower" },
    // "GET /api/test": { controller: "AddressController", action: "test" },

};
