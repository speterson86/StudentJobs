//  http://stackoverflow.com/questions/15550689/jquery-function-to-show-hide-textareas-based-on-which-option-is-selected
$(function() {
    $('reject_description').hide();

    $('#job_approve_true').click(function() {console.log("yes selected, do not show.");
        $("#job_reject_description").hide();
    });
  
    $('#job_approve_false').click(function() {console.log("no selected, show and prompt admin to fill in explaination.");
        $("#job_reject_description").show();
    });

    
});