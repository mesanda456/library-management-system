<?php
include 'conf.php';

// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get updated data and sanitize inputs
    $isbn = $conn->real_escape_string($_POST['isbn']); // Sanitize ISBN
    $title = $conn->real_escape_string($_POST['title']);
    $author = $conn->real_escape_string($_POST['author']);
    $genre = $conn->real_escape_string($_POST['genre']);

    // Update book in the database using ISBN as the condition
    $sql = "UPDATE book 
            SET title = ?, author = ?, genre = ?
            WHERE isbn = ?";
    
    $stmt = $conn->prepare($sql);

    if ($stmt) {
        $stmt->bind_param("ssss", $title, $author, $genre, $isbn); // Bind parameters
        if ($stmt->execute()) {
            $message = "<p class='message success'>Book updated successfully.</p>";
        } else {
            $message = "<p class='message error'>Error updating record: " . $stmt->error . "</p>";
        }
        $stmt->close();
    } else {
        $message = "<p class='message error'>Error preparing statement: " . $conn->error . "</p>";
    }
    $conn->close();
} else {
    $message = "<p class='message error'>Invalid request method.</p>";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Book</title>
    <!-- Link to the external CSS file -->
    <link rel="stylesheet" href="style6.css">
</head>
<body>
    <div class="container">
        <?php
        // Display the message
        echo $message;
        ?>
        <a href="view.php">View All Books</a>
    </div>
</body>
</html>
