module.exports = async (srv) => {
 
    //implementation code
    srv.on('greetings', (req,res)=>{ //when ever endpoint is greetings this function executes
    })
    srv.on('multiply',(req,res)=>{
        return req.data.a + req.data.b;
    })
 
}
