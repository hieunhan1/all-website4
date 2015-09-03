<html>
  <head>
    <title>Translate API Example</title>
  </head>
  <body>
    <div id="sourceText">Hello world</div>
    <div id="translation"></div>
    <script>
      function translateText(response) {
        document.getElementById("translation").innerHTML += "<br>" + response.data.translations[0].translatedText;
      }
    </script>
    <script>
      var newScript = document.createElement('script');
      newScript.type = 'text/javascript';
      var sourceText = escape(document.getElementById("sourceText").innerHTML);
      // WARNING: be aware that YOUR-API-KEY inside html is viewable by all your users.
      // Restrict your key to designated domains or use a proxy to hide your key
      // to avoid misuage by other party.
      var source = 'https://www.googleapis.com/language/translate/v2?key=AIzaSyDN7GkMnB5SFVtPUmEfmMCS7Bx8Qah-Yhg&source=en&target=de&callback=translateText&q=' + sourceText;
      newScript.src = source;

      // When we add this script to the head, the request is sent off.
      document.getElementsByTagName('head')[0].appendChild(newScript);
    </script>
  </body>
</html>