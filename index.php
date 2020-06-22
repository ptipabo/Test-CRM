<?php
	$styleSheet = './style/css/screen.css';
	$homePage = './index.php';
	include('./header.php');

		// On accède à la base de données contenant la liste des clients
		require('./config.php');

		include('./modules/add-file.php');
		
		?>
		
		<table>
			<tbody>
			<tr>
				<td>Nom</td>
				<td>Téléphone</td>
				<td>Email</td>
				<td>Adresse</td>
				<td>Code postal</td>
				<td>Ville</td>
				<td>Client</td>
				<td id="addCustomer"><a href="./modules/create.php" title="Créer un nouveau client"><img src="./style/img/create.png" /></a></td>
			</tr>
			<?php
			// On récupère le contenu de la table "clients" dans la base de données

				$sql = "SELECT id, name, phone, email, address, cp, city, customer FROM clients";// On crée la requête sql qui va récupérer toutes les données de la table "clients"
				$result = mysqli_query($link, $sql);

				if (!$result) {
					die('Requête invalide : ' . mysqli_error($link));
				} else {// Si la requête s'effectue correctement...

					$rowColor = 'grey';

					while ($client = mysqli_fetch_object($result)) {// Pour chaque boucle effectuée, on crée une classe qui sera remplie automatiquement avec les données récupérées de la base de données
						if($rowColor == 'grey'){
							$rowColor = 'white';
						}else{
							$rowColor = 'grey';
						}
						// On affiche le client dans la liste
						echo '<tr class="'.$rowColor.'">
							<td>'.$client->name.'</td>
							<td>'.$client->phone.'</td>
							<td>'.$client->email.'</td>
							<td>'.$client->address.'</td>
							<td>'.$client->cp.'</td>
							<td>'.$client->city.'</td>
							<td>'.$client->customer.'</td>
							<td><a href="./modules/edit.php?id='.$client->id.'" title="Modifier ce client"><img src="./style/img/edit.png" /></a></td>
						</tr>';
					}
				}
				mysqli_free_result($result);// On libère toutes les données récupérées
				mysqli_close($link);
				
			?>
			</tbody>
		</table>
	</div>
	<script src="./js/eventManager.js"></script>
	<?php
	include('./footer.php');
?>