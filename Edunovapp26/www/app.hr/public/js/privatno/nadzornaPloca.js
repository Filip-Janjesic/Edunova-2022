let uvjet='';
$( '#uvjet' ).autocomplete({
    source: function(req,res){
        uvjet = req.term;
       $.ajax({
           url: url + 'nadzornaploca/trazi/' + uvjet,
           success:function(odgovor){
            res(odgovor);
            //console.log(odgovor);
        }
       }); 
    },
    minLength: 2,
    select:function(dogadaj,ui){
       // console.log(ui.item);
       window.location.href = url + ui.item.vrsta + '/promjena/' + ui.item.sifra;
    }
}).autocomplete( 'instance' )._renderItem = function( ul, item ) {
    
    //console.log(uvjet);
    let sadrzaj = item.tekst;
   //https://stackoverflow.com/questions/13838468/change-part-of-the-string-with-case-sensitive
    var querystr = uvjet;
var output = sadrzaj;
var reg = new RegExp(querystr, 'gi');
var final_str = output.replace(reg, function(str) {return str.bold().fontcolor("Blue")});


    return $( '<li>' )
      .append( '<div>' + final_str + ' (' + item.vrsta + ')<div>')
      .appendTo( ul );
  };

$('#uvjet').focus();