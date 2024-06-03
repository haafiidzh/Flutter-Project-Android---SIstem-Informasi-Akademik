var tokenpalsu  = function (req, res, next) {
    var token = req.header('token');
    
    if(token){
        if (token=="123456") {
            next();
        } else {
            res.json({
                status:false,
                pesan: 'Token Tidak Valid',
                data:[]
            });
        }
    } else {
        res.json({
            status:false,
            pesan:"Maaf tidak membawa token",
            data:[]
        });
    }
}

module.exports=tokenpalsu;