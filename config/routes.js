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
    'GET /api/test': { controller: 'UserController', action: 'test' },
    'POST /api/send': { controller: 'UserController', action: 'send' },
    'POST /api/login': { controller: 'UserController', action: 'login' },
    'POST /api/signin': { controller: 'UserController', action: 'signin' },
    'POST /api/register': { controller: 'UserController', action: 'register' },
};
