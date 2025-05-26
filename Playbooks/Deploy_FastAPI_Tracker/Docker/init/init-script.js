// Initialize MongoDB with a default database and collection

// Connect to the MongoDB server
db = db.getSiblingDB('tracker');  // Connect to the database 'trackerdb'

// Create a 'usersdb' collection and insert the default user
db.usersdb.insertOne({
  Username : "admin",
  Password : "admin",
  FirstName : "Administrator",
  LastName : "Local",
  Email : "admin@gmail.com",
  Enabled : true,
  Role : "Administrator",
});

