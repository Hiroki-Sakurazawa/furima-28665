window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("category-list")
  const pullDownList = document.getElementById("pull-down")
  const lady = document.getElementById("lady")
  const man = document.getElementById("man")
  const baby = document.getElementById("baby")
  const interior = document.getElementById("interior")
  const book = document.getElementById("book")
  const toy = document.getElementById("toy")
  const camera = document.getElementById("camera")
  const sport = document.getElementById("sport")
  const handmade = document.getElementById("handmade")
  const other = document.getElementById("other")

  pullDownButton.addEventListener('click', function(){
    if (pullDownList.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownList.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownList.setAttribute("style", "display:block;")
    }
  })
  pullDownList.addEventListener('click', function(){
    pullDownList.removeAttribute("style", "display:block")
  })
  pullDownList.addEventListener('mouseover', function(){
    pullDownList.setAttribute("style", "display:block")
  })
  pullDownList.addEventListener('mouseout', function(){
    pullDownList.removeAttribute("style", "display:block")
  })
  lady.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:white;")
  })
  lady.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:white;")
  })
  man.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:white;")
  })
  man.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:white;")
  })
  baby.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:white;")
  })
  baby.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:white;")
  })
  interior.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:white;")
  })
  interior.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:white;")
  })
  book.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:white;")
  })
  book.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:white;")
  })
  toy.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:white;")
  })
  toy.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:white;")
  })
  camera.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:white;")
  })
  camera.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:white;")
  })
  sport.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:white;")
  })
  sport.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:white;")
  })
  handmade.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:white;")
  })
  handmade.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:white;")
  })
  other.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:white;")
  })
  other.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:white;")
  })
})