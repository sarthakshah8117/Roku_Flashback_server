const express = require('express');
const router = express.Router();

//import the sql connection
const connect  = require("../config/sqlConfig");

router.get("/", (req, res) => {
    // res.json = echo json encode(....) in php
    res.json({message: "you hit the api route"});
});

router.get("/users", (req,res) =>{
  res.json({message: "all users route"});
});

router.get("/movies", (req, res) => {
    // run a sql query here
    connect.getConnection(function(err, connection) {
        if (err) throw err; // not connected!
       
        // Use the connection
        connection.query('SELECT * FROM tbl_movies', function (error, results) {
          // When done with the connection, release it.
          connection.release();
       
          // Handle error after the release.
          if (error) throw error;

          res.json(results);
        });
        
      });  
});

router.get("/shows", (req, res) => {
  // run a sql query here
  connect.getConnection(function(err, connection) {
      if (err) throw err; // not connected!
     
      // Use the connection
      connection.query('SELECT * FROM tbl_shows', function (error, results) {
        // When done with the connection, release it.
        connection.release();
     
        // Handle error after the release.
        if (error) throw error;

        res.json(results);
      });
      
    });  
});
router.get("/movies/:id", (req, res) => {
    // run a sql query here
    connect.getConnection(function(err, connection){
      if (err) throw err;
    

    connection.query(`SELECT * FROM tbl_movies WHERE movies_id=${req.params.id}`, function (error, results) {

      connection.release();

        if (error) throw error;

        res.json(results);
      });

    });
    
});

module.exports = router;