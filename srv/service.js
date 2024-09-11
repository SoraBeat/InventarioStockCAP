const cds = require('@sap/cds');

module.exports = async function (srv) {
    const db = await cds.connect.to("db");
}