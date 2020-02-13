// var passport = require('passport'),
//     FacebookStrategy = require('passport-facebook').Strategy,
//     request = require('request');

// passport.use(new FacebookStrategy({
//     clientID: "745511182545743",
//     clientSecret: "ab66a669d9f8adf71ae5bd19024aadb1",
//     callbackURL: "/api/v1/auth/facebook/callback",
// }, function (accessToken, refreshToken, profile, done) {
//     const url = `https://graph.facebook.com/v2.10/me?access_token=${accessToken}&fields=id,email,first_name,last_name,picture`;
//     var options = { method: 'GET', url: url, json: true };
//     request(options, (err, res, body) => {
//         done(null, body);
//     })
// }));