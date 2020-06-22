<?php
	$styleSheet = '../style/css/screen.css';
	$homePage = '../index.php';
	include('../header.php');
	require('./functions.php');

		// On accède à la base de données contenant la liste des clients
		require('../config.php');
		?>
		
		<div class="addEdit">
			<form action="./create.php" method="POST">
				<h2 class="formTitle">Créer un nouveau client</h2>	
				<label for="name">Nom</label>
				<input type="text" name="name" value="<?php if(isset($_POST['name'])){echo $_POST['name'];} ?>" /><br />
				<label for="phone">Téléphone</label>
				<input type="text" name="phone" value="<?php if(isset($_POST['phone'])){echo $_POST['phone'];} ?>" /><br />
				<label for="email">Email</label>
				<input type="text" name="email" value="<?php if(isset($_POST['email'])){echo $_POST['email'];} ?>" /><br />
				<label for="address">Adresse</label>
				<input type="text" name="address" value="<?php if(isset($_POST['address'])){echo $_POST['address'];} ?>" /><br />
				<label for="cp">Code postal</label>
				<input type="text" name="cp" value="<?php if(isset($_POST['cp'])){echo $_POST['cp'];} ?>" /><br />
				<label for="city">Ville</label>
				<input type="text" name="city" value="<?php if(isset($_POST['city'])){echo $_POST['city'];} ?>" /><br />
				<label for="customer">Déjà client ?</label>
				<input type="checkbox" name="customer" <?php if(isset($_POST['customer'])){echo ' checked';} ?> /><br />
				<input type="submit" name="save" value="Enregistrer" class="validButton" />
			</form>
		</div>
		<?php
			
			if(isset($_POST['save'])){
				// On vérifie que tous les champs contiennent bien une valeur
				if(!empty($_POST['name']) && !empty($_POST['phone']) && !empty($_POST['email']) && !empty($_POST['address']) && !empty($_POST['cp']) && !empty($_POST['city'])){
					if(checkEmailFormat($_POST['email']) == true){
						
						if(isset($_POST['customer'])){
							$alreadyCustomer = 'Yes';
						}
						else{
							$alreadyCustomer = 'No';
						}

						// On ajout le nouveau client à la base de données
						$sql = 'INSERT INTO clients (id, name, phone, email, address, cp, city, customer) VALUES ("", "'.$_POST['name'].'", "'.$_POST['phone'].'", "'.$_POST['email'].'", "'.$_POST['address'].'", "'.$_POST['cp'].'", "'.$_POST['city'].'", "'.$alreadyCustomer.'");';
						$result = mysqli_query($link, $sql);
						
						if (!$result) {
							die('Requête invalide : ' . mysqli_error($link));
							mysqli_close($link);
						} else{
							mysqli_close($link);
							header('Location:../index.php');
						}
					}
					else{
						echo '<p class="errorMessage">ERREUR : Cette adresse email n\'est pas une adresse valide !</p>';
					}
				}
				else{
					echo '<p class="errorMessage">ERREUR : Veuillez remplir tous les champs !</p>';
				}
			}
		?>
	</div>
	<?php
    include('../footer.php');
?>