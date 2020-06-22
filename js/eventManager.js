var importFileForm = document.getElementById("importFile");
var isVisible = false;

function showImportForm(){
    if(isVisible == true){
        importFileForm.style.visibility="hidden";
        importFileForm.style.display="none";
        isVisible = false;
    }
    else{
        importFileForm.style.visibility="visible";
        importFileForm.style.display="block";
        isVisible = true;
    }
}