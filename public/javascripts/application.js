// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function missionActAdd(url)
{
  new Ajax.Request(url,{
    onSuccess: function(response){
      alert("Created Act");
	},
	onFailure: function(response){
	  alert("Failed to create act");
	},
	onComplete: function(response){
	  alert("Complete")
	}
  });
}
