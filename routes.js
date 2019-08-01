
var mysql = require('mysql');
const express  = require('express');
var app = express();
const bodyparser = require('body-parser');
app.use(bodyparser.json());
let sites = {};
 var conn = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'MyNewPass',
  database: 'dbs',
  insecureAuth : true,
  dateStrings: true
 });

conn.connect(function(err) {
  if (!err) 
  console.log("Connected!");
  else 
  console.log("Not Connected!");
});

app.listen(3000,()=>console.log("Server is on 3000"));

//This code will Update power with random values every second
app.put('/sitePower',(res,req)=>{
    
    function siteP() {
        conn.query("UPDATE site_power SET power =  FLOOR(rand() * 1000) + 1, time_sent = CURRENT_TIMESTAMP",(err,rows,fields) =>{
           if(!err){ 
            console.log(rows);
         }
          
           else
           console.log(err);
         })
       
      }
      setInterval(siteP, 1000);
    });

//This code will return all the rows of the site_power table.
    app.get('/sitepower',(req,res)=>{
    
        
        conn.query(" Select * from site_power",(err,rows,fields) =>{
            console.log(rows);
            if(!err){ 
               res.header("Access-Control-Allow-Origin", "*");
               res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
               res.send(JSON.stringify(rows));
               
             }
             
             else
               console.log(err);
          })
     
    });
    
 //This code will update the total_power with aggregated value of power from site_power table evry second.   
app.put('/dsuspower',(res,req)=>{
    function dsup() {
        
        conn.query(" call SumPowerSP1();",(err,rows,fields) =>{
                  
            if(!err){ 
                
               console.log("Successfull");
             }
             
             else
               console.log(err);
          })
           
      }
      
      setInterval(dsup, 1000);
});

//This code will return all the rows of the dsu_power table.
app.get('/dsuspower',(req,res)=>{
    conn.query(" Select * from dsu_power",(err,rows,fields) =>{
        console.log(rows);
         if(!err){ 
           res.header("Access-Control-Allow-Origin", "*");
           res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
           res.send(JSON.stringify(rows));
            }
         else
           console.log(err);
      })
 
});



