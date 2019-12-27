/**
 * UserController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions

 */

let users = []

module.exports = {
    login: async (req, res) => {
        if (!req.isSocket) {
            return res.badRequest();
        }
        var { name, room } = req.body

        var socketId = sails.sockets.getId(req);
        socketId = 1

        name = name.trim().toLowerCase();
        room = room.trim().toLowerCase();

        user = { socketId, name, room };

        console.log(room, name)
        users.push(user);
        sails.sockets.join(req, name)
        sails.sockets.join(req, room)
        console.log("asd")
        sails.sockets.blast(name, {
            user: 'admin', text: `${user.name}, welcome to room ${user.room}.`
        })
    },
    signin: async (req, res) => {
        const { email, password } = req.body
        try {
            const user = await User.findOne({ email })

            await sails.helpers.passwords.checkPassword(password, user.password)
            const token = await sails.helpers.genarateToken.with({
                payload: {
                    id: user.id
                }
            })
            res.ok({
                data: { token },
                error: null
            })
        } catch (error) {
            return res.serverError(error.message);
        }

    },
    register: async (req, res) => {
        const { name, email, password, } = req.body
        try {
            const user = await User.findOne({ email })
            if (user) {
                return res.json({
                    data: null,
                    error: {
                        message: "Email has been used"
                    }

                });
            } else {
                const newUser = await User.create({ name, email, password: await sails.helpers.passwords.hashPassword(password) }).fetch()
                res.ok({ newUser })
            }
        } catch (error) {
            return res.serverError(error.message);
        }
    },
    test: (req, res) => {
        if (!req.isSocket) {
            return res.badRequest();
        }

        // sails.sockets.join('funRoom', ['greatRoom', 'awesomeRoom'], function (err) {

        //     if (err) { return res.serverError(err); }
        //     var socketId = sails.sockets.getId(req);
        //     // => "BetX2G-2889Bg22xi-jy"

        //     sails.log('My socket ID is: ' + socketId);
        //     res.json({
        //         message: 'Subscribed all members of `funRoom` to `greatRoom` and `awesomeRoom`!'
        //     });
        // });
        sails.sockets.join(req, "chat-channel");
        return res.ok();
    },
    send: (req, res) => {
        const { smg } = req.body
        console.log(req.body)
        sails.sockets.broadcast("chat-channel", "message", smg, req)
        res.ok()
    }
};

