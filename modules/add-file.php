<!--On affiche un bouton "Import"-->
	<button onclick="showImportForm()" id="importButton">Importer une liste de clients</button>
	<form enctype="multipart/form-data" action="./index.php" method="post" id="importFile">
		<h2 class="formTitle">Importer une liste de clients</h2>
		<input type="hidden" name="MAX_FILE_SIZE" value="30000" /><br>
            <label for="fileToAdd" id="addFile">Selectionnez votre fichier (.txt ou .csv) : </label><br/><input name="fileToAdd" type="file" value="Chargez un fichier.."><br>
        <input type="submit" class="validButton" name="addFile" value="Importer" title="Importer une liste de clients" /><br>
    </form>
	<?php
	// Validation du formulaire
    if (isset($_POST['addFile'])){

		// On vérifie si l'utilisateur à bien sélectionné un fichier
		if (!empty($_FILES['fileToAdd']['tmp_name'])){

			$fileType = explode('.', $_FILES['fileToAdd']['name']);

			if($fileType[1] == 'txt' || $fileType[1] == 'csv'){
				$uploadDirectory = './tmp/';
				$uploadFile = $uploadDirectory.basename($_FILES['fileToAdd']['tmp_name']);

				// On ajoute le fichier dans le dossier "./tmp/"
				if (move_uploaded_file($_FILES['fileToAdd']['tmp_name'], $uploadFile)) {
					echo '<p class="confirmMessage">Le fichier est valide, et a été téléchargé avec succès.</p>';
					$contentList = file($uploadFile);
				} else {
					echo '<p class="errorMessage">Attaque potentielle par téléchargement de fichiers.</p>';
				}

				// On effectue l'import du fichier dans la base de données
				$sql = 'LOAD DATA
							LOCAL
								INFILE "'.$uploadFile.'"
									INTO TABLE clientlist.clients
										FIELDS TERMINATED BY "," ENCLOSED BY "\""
											LINES TERMINATED BY "\r\n"
												IGNORE 1 LINES;';
				
				$result = mysqli_query($link, $sql);
				if (!$result) {
					die('Requête invalide : '.mysqli_error($link));
				} else{
					// On supprime le fichier afin de ne pas le conserver inutilement
					unlink($uploadFile);
				}
			}
			else{
				echo '<p class="errorMessage">ERREUR : Ce type de fichier n\'est pas pris en charge ! Il doit être de type txt ou csv.</p>';
			}
		}
		else{
			echo '<p class="errorMessage">ERREUR : Pas de fichier sélectionné !</p>';
		}
	}
	?>