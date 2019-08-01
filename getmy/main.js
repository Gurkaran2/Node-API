$(document).ready(function(){
  $.get("http://localhost:3000/dsuspower",function(data){
       
        var data_table  = " ";
        $.each(JSON.parse(data),function(key,value){
           data_table += '<tr>';
           data_table += '<td>'+value.dsu_id +'</td>' ;
           data_table += '<td>'+value.total_power +'</td>';
           data_table += '<td>'+value.time_aggregated +'</td>'; 
           data_table += '</tr>';
        });
        $('#dsu_table').append(data_table);
  });
  $.get("http://localhost:3000/sitepower",function(data){
       
    var data_table  = " ";
    $.each(JSON.parse(data),function(key,value){
       data_table += '<tr>';
       data_table += '<td>'+value.id +'</td>' ;
       data_table += '<td>'+value.power+'</td>';
       data_table += '<td>'+value.dsu_id +'</td>'; 
       data_table += '<td>'+value.time_sent +'</td>'; 
       data_table += '</tr>';
    });
    $('#site_table').append(data_table);
});
});