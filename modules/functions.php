<?php
// Permet de vérifier si une adresse email est correctement écrite
function checkEmailFormat($emailToCheck){
    //On charge toutes les extensions possible depuis un autre fichier
    $extensionList = file('./extensionList.csv');
    
    $atCheck = explode('@',$emailToCheck);
    // Si l'adresse a bien été divisée en 2, cela signifie qu'il n'y a qu'un @
    if(count($atCheck) == 2){
        $extensionCheck = explode('.',$atCheck[1]);
        
        // Si la seconde partie de l'adresse a bien été divisée en 2; cela signifie qu'elle contient bien une extension
        if(count($extensionCheck) == 2){
            $matchDetector = false;
            // On vérifie si l'extension de l'adresse existe dans la liste
            for($i=0;$i<count($extensionList);$i++){
                $cleanedExtension = preg_replace("/\s+/", "", $extensionList[$i]);
                $addressExtension = '.'.$extensionCheck[1];
                if($addressExtension == $cleanedExtension){
                    $matchDetector = true;
                }
            }

            if($matchDetector == true){
                return true;
            }
            else{
                return false;
            }
        }
        else{
            return false;
        }
    }
    else{
        return false;
    }
}
?>