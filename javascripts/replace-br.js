document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll(".md-post__content br").forEach(function (br) {
      br.replaceWith(document.createTextNode("\u00a0/ "));
    });
  });
  