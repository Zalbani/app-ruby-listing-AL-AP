$(document).on('turbolinks:load', function(){

    $("[data-do='select_language']").change(function() {

        var CurrentUrl=self.location.href;
        var CurrentLang = CurrentUrl.split('\/')[3];
        if (this.value === "en" && CurrentLang === "fr"){
            //window.location.href = '/languages/' + this.value;
            document.location.href = CurrentUrl.replace("\/"+CurrentLang+"\/","/");
        }
        else{
            if(this.value === "fr" && CurrentLang.length != null && CurrentLang !== "fr"){
                //window.location.href = '/languages/' + this.value;
                document.location.href = '/' + this.value  + window.location.pathname;
            }
        }

    })

});



