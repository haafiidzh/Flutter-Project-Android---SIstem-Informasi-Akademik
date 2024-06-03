var express = require('express');
var router = express.Router();
var cekToken = require('../middleware');

// panggil model informasi
var informasiModel = require('../models/informasi.js');
const { where } = require('sequelize');

// tampil data
router.get('/', cekToken, function (req,res,next) {
    informasiModel.findAll().then( data=>{
        res.json({
            status:true,
            pesan:'Berhasil Tampil',
            data:data
        });
    }).catch(err =>{
        res.json({
            status:false,
        });
    });
});

// tambah data
router.post('/', cekToken, function (req,res,next) {
    informasiModel.create(req.body).then (data=>{
        res.json({
            status:true,
            pesan:'Berhasil Tambah',
            data:data
        });
    }).catch(err =>{
        res.json({
            status:false,
            pesan:'Gagal Tambah :' + err.message,
            data:[]
        });
    });
});

// ubah data
router.put('/', cekToken, function (req,res,next) {
    informasiModel.update(req.body).then( data=>{
        res.json({
            status:true,
            pesan:'Berhasil Ubah',
            data:[]
        });
    }).catch(err =>{
        res.json({
            status:false,
            pesan:'Gagal Ubah :' + err.message,
            data:[]
        });
    });
});

// hapus data
router.delete('/', cekToken, function (req,res,next) {
    informasiModel.destroy
    ({
        where:{id:req.body.id}
    })
        .then( data=>{
        res.json({
            status:true,
            pesan:'Berhasil Hapus',
            data:[]
        });
    }).catch(err =>{
        res.json({
            status:false,
            pesan:'Gagal Hapus :' + err.message,
            data:[]
        });
    });
});

module.exports = router;