<mimi>
  <img src="img/{ petImage }.gif">
  <p if={visible}>{data}{myCurrentJoke}</p>

  <script>
    //make a copy of my pet object and call it that
    var that = this;

    //initial state/propoerty
    this.hunger = 50;
    this.petImage = "happy";
    this.visible = false;
    this.myCurrentJoke = "temp joke";
    this.data = "";
    this.myJokes = [
      {
        value: "ʕ •ᴥ•ʔ"
      }, {
        value: "(⌐■_■)"
      }, {
        value: "╭∩╮(︶︿︶)╭∩╮"
      }, {
        value: "ლ(ಠ益ಠ)ლ"
      }, {
        value: "(=^ェ^=)"
      }
    ]
    this.hide = function () {
      this.visible = false;
    }

    this.clearData = function(){
      this.data = "";
    }

    this.selectJoke = function(){
      var max = that.myJokes.length;
      var tempIndex = Math.floor(Math.random() * Math.floor(max));
      that.myCurrentJoke = that.myJokes[tempIndex].value;
    }


    //respond to gigiSpeak action



    this.wait = function(){
      setTimeout(function () {
        that.respond();
      }, 1000);
    }

    this.respond = function () {
      /* select a joke, make it display  */
      that.selectJoke();
      that.visible = true;
      that.update();
      // console.log(this);
      setTimeout(function () {
        that.hide();
        that.update();
      }, 1000);
    }

    this.speak = function () {
      this.clearData();
      console.log(this.data);
      this.selectJoke();

      //console.log(that.myCurrentJoke);
      this.visible = true;

      this.update();
      // console.log(this);
      setTimeout(function () {
        that.hide();
        that.update();
      }, 1000);
    }
  </script>

  <style>
    :scope {
      margin: auto;
      color: blue;
    }

    img {
      width: 30%;
    }
    P{
      text-align: right;
      padding-right: 4em;
    }
  </style>
</mimi>
