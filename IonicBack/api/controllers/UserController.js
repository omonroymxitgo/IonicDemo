/**
 * UserController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {


    register: async function (req,res){
        console.log("Entro a servicio registrar");
        console.log(req);

    },
  
    getUser: async function (req, res) {
        try{

            var myDBStore = sails.getDatastore(); //gets the default datastore.
            var query = "SELECT * FROM user;";

            console.log("MY COnexion");
            console.log(myDBStore);
            myDBStore.sendNativeQuery(query).exec(function (err, nativeResult) {
                console.log("error");
                console.log(err);
                if (err) {
                return res.send(err);
                }
                console.log("Resultado");
                console.log(nativeResult);
                console.log(nativeResult.rows)
                return res.send(nativeResult.rows);
            });

            return res.ok(nativeResult);
        
        }catch(e){
            console.log("entra catch");
            return res.ok({ msg: e });
        }
        
    }




};

