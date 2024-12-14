<?php
// Database connection details
$servername = "localhost";
$username = "root";  // Replace with your database username
$password = "";      // Replace with your database password
$dbname = "CPS"; // Replace with your database name

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get Employee ID from form input
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $empid = $_POST['empid'];

    // Prepare and execute query
    $sql = "SELECT * FROM gov_id WHERE UserID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $empid);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        
        // Successful login, redirect to main/index.php
        header("Location: main/index.html");
        exit();
    } else {
        // Failed login
        echo "<h2>Invalid User ID. Please try again.</h2>";
    }

    // Close connection
    $stmt->close();
    $conn->close();
}
?>
