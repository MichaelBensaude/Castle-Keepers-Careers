<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <title>Castle Keepers Carrers</title>
</head>
<body>
<?php
$online = false ;

if (!$online){
    echo '<h1> Castle Keepers Carrers</h1>
    <div class="form-container">
        <h2>Inscription</h2>
        <label for="uname"><b>Nom d\'utilisateur</b></label>
        <input type="text" placeholder="Entrer le nom d\'utilisateur" name="name" required>
        <label for="psw"><b>Mot de passe</b></label>
        <input type="password" placeholder="Entrer le mot de passe" name="psw" required>
        <label for="psw"><b>confirmer le mot de passe</b></label>
        <input type="password" placeholder="Entrer le mot de passe" name="psw" required>
        <input type="radio" id="candidat" name="fav_language" value="candidat" required>
        <label for="candidat">candidat</label>
        <input type="radio" id="recruteur" name="fav_language" value="recruteur" required>
        <label for="recruteur">recruteur</label><br>
        <label for="mail"><b>Adresse e-mail</b></label>
        <input type="mail" placeholder="Entrer votre adresse mail" name="mail" required>
     
        <button type="submit">S\'inscrire</button>';

} else {
    echo '<h1> Castle Keepers Carrers</h1>
    <div class="form-container">
        <h2>Connexion</h2>
        <label for="uname"><b>Nom d\'utilisateur</b></label>
        <input type="text" placeholder="Entrer le nom d\'utilisateur" name="name" required>
        <label for="psw"><b>Mot de passe</b></label>
        <input type="password" placeholder="Entrer le mot de passe" name="psw" required>
        <button type="submit">Connexion</button>';

}
?>

 
    </div>
</body>
</html>
