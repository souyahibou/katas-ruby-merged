 function post_displaying(title, content, rate, photo, comments) {
        title_tag = document.getElementById("title_tag");
        photo_tag = document.getElementById("photo_tag");
        rate_tag  = document.getElementById("rate_tag");
        post_tag  = document.getElementById("post_tag");
        react_tag = document.getElementById("comments");
      
	stars = "Note:";
	for (nbr = 0; nbr < rate; nbr++) { stars += '<span class="glyphicon glyphicon-star"></span>';} // total number of star icons

        list_comments ="";
        for (let com of comments.split('|')) { list_comments += "<li>" + com + "</li>";}

        title_tag.innerHTML  = title;
        photo_tag.src        = photo;
        rate_tag.innerHTML   = stars;
        post_tag.innerHTML   = content;
        react_tag.innerHTML = list_comments
   }
