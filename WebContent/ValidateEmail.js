/**
 * 
 */
function ValidateEmail(inputText)
{
var mailformat =/^\w+([\.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/;
if(inputText.value.match(mailformat))
	{
	document.email.focus();
	return true;
	}
else
	{
	alert("You have entered an invalid Email ID");
	document.email.focus();
	return false;
	}

}