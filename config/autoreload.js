module.exports.autoreload = {
    active: true,
    usePolling: false,
    dirs: [
        "api/models",
        "api/controllers",
        "api/services",
        "config/routes",
        "config/session",
    ],
    ignored: [
        // Ignore all files with .ts extension
        "**.ts"
    ],
    overrideMigrateSetting: false
};