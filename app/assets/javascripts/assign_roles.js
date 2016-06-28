$(function(){
  $('.role').change(function(){
      console.log('change!');
      $.ajax({
        type: "PATCH",
        url: "users/" + this.id,
        data: { role: $(".role").val() }
      });
    });
})
