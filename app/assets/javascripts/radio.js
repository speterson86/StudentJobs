//  http://stackoverflow.com/questions/15550689/jquery-function-to-show-hide-textareas-based-on-which-option-is-selected
$(function() {
    $('reject_description').hide();

    $('#yes_noShow').click(function() {console.log("yes selected, do not show.");
        $("#post_reject_description").hide();
    });
  
    $('#no_yesShow').click(function() {console.log("no selected, show and prompt admin to fill in explaination.");
        $("#post_reject_description").show();
    });

    
});