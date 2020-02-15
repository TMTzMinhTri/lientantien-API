/**
 * Custom configuration
 * (sails.config.custom)
 *
 * One-off settings specific to your application.
 *
 * For more information on custom configuration, visit:
 * https://sailsjs.com/config/custom
 */

module.exports.custom = {

  baseUrl: 'http://localhost:5000',
  SECRET_KEY_JWT: "e28f80b607c5191eb63b94f1639a8a00",
  AWS_S3_APIKEY: "AKIAIAZ554YUDFDOU7QQ",
  AWS_S3_SECRET_KEY: "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",
  AWS_S3_BUCKET: "minhtri/userInfo",
  AWS_s3_URL_IMAGE: "https://minhtri.s3.us-east-2.amazonaws.com/userInfo"
  /***************************************************************************
  *                                                                          *
  * Any other custom config this Sails app should use during development.    *
  *                                                                          *
  ***************************************************************************/
  // mailgunDomain: 'transactional-mail.example.com',
  // mailgunSecret: 'key-testkeyb183848139913858e8abd9a3',
  // stripeSecret: 'sk_test_Zzd814nldl91104qor5911gjald',
  // …

};
