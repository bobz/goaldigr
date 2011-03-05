// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function missionActAdd(url, mission_id)
{
  new Ajax.Request(url,{
    onSuccess: function(response){
      var json = response.responseJSON;
	  console.log("JSON", json);

	  var row = $('mission_'+ mission_id);
      row.down('.day').update(json[0]);

	},
	onFailure: function(response){
	  alert("Failed to create act");
	}
  });
}
