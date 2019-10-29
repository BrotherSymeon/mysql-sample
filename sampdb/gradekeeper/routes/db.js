var mysql = require('mysql');

var getConnection =  function(){
  var con = mysql.createConnection({
    host     : 'localhost',
    user     : 'sampleusr',
    password : 'secret',
    database : 'sampledb'
  });
  return con;
}

var students = function(){
  return new Promise((resolve, reject) => {
    var con = getConnection()
    con.connect((error) => {
      if(error){
        reject(error)
      }
      con.query('select s.name as name, avg(sc.score) as student_score from student s inner join score sc where s.student_id = sc.student_id group by sc.student_id;', function (err, rows, fields) {
        if (error) {
          reject(error)
        }
        resolve(rows)
      })
    })
  })
}

module.exports = {
  students
}