$(function(){
  $('#zoo_image').change(function(){
    previewImage(this);
    $('#preview').show();
  })
});

var previewImage = function(input){
  if(input.files && input.files[0]){
    var reader = new FileReader();

    reader.onload = function(e){
      $('#preview').attr('src', e.target.result)
    };

    reader.readAsDataURL(input.files[0])
  }
};

var showCurrentImage = function(url){
  $('#preview').attr('src', url).show()
};