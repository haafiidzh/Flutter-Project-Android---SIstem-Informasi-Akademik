var koneksi = require('../koneksi');
const Sequelize = require('sequelize');
const dokumenModel = koneksi.define('dokumen',
    {
        id: {
            type: Sequelize.INTEGER,
            autoIncrement:true,
            primaryKey: true,
        },
        judul: {
            type: Sequelize.STRING,
        },
        subjudul: {
            type: Sequelize.TEXT,
        },
        file: {
            type:Sequelize.STRING,
        },
    },
    {
        freezeTableName:true
    }
);

module.exports=dokumenModel;