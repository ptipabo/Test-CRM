<?php
	$styleSheet = '../style/css/screen.css';
	$homePage = '../index.php';
	include('../header.php');
	require('./functions.php');

			// On accède à la base de données contenant la liste des clients
			require('../config.php');

			// On récupère les données concernant le client à modifier
			$sql = 'SELECT * FROM clientlist.clients WHERE id="'.$_GET['id'].'";';
			$result = mysqli_query($link, $sql);
			
			if (!$result) {
				die('Requête invalide : ' . mysqli_error($link));
				mysqli_close($link);
			} else{
				$clientInfo = mysqli_fetch_object($result);
			}
		?>
				
		<div class="addEdit">
			<form action="./edit.php?id=<?php echo $_GET['id']; ?>" method="POST">
				<h2 class="formTitle">Modifier un client</h2>	
				<label for="name">Nom</label>
				<input type="text" name="name" value="<?php if(isset($_POST['name'])){echo $_POST['name'];}else{echo $clientInfo->name;} ?>" /><br />
				<label for="phone">Téléphone</label>
				<input type="text" name="phone" value="<?php if(isset($_POST['phone'])){echo $_POST['phone'];}else{echo $clientInfo->phone;} ?>" /><br />
				<label for="email">Email</label>
				<input type="text" name="email" value="<?php if(isset($_POST['email'])){echo $_POST['email'];}else{echo $clientInfo->email;} ?>" /><br />
				<label for="address">Adresse</label>
				<input type="text" name="address" value="<?php if(isset($_POST['address'])){echo $_POST['address'];}else{echo $clientInfo->address;} ?>" /><br />
				<label for="cp">Code postal</label>
				<input type="text" name="cp" value="<?php if(isset($_POST['cp'])){echo $_POST['cp'];}else{echo $clientInfo->cp;} ?>" /><br />
				<label for="city">Ville</label>
				<input type="text" name="city" value="<?php if(isset($_POST['city'])){echo $_POST['city'];}else{echo $clientInfo->city;} ?>" /><br />
				<label for="customer">Déjà client ?</label>
				<input type="checkbox" name="customer" <?php if(isset($_POST['customer']) || $clientInfo->customer == "Yes"){echo ' checked';} ?> /><br />
				<input type="submit" name="save" value="Enregistrer" class="validButton" />
			</form>
		</div>
		<?php
			mysqli_free_result($result);

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

						// On met le client à jour dans la base de données
						$sql = 'UPDATE clients SET name="'.$_POST['name'].'", phone="'.$_POST['phone'].'",email="'.$_POST['email'].'", address="'.$_POST['address'].'", cp="'.$_POST['cp'].'", city="'.$_POST['city'].'", customer="'.$alreadyCustomer.'" WHERE id="'.$_GET['id'].'";';
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