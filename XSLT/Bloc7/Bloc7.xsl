<?xml version="1.0" encoding="UTF-8"?>
<!-- Bloc 7 - XSLT Nivell 1: Estructura mínima -->
<!-- Ex 1: Estructura mínima amb xsl:stylesheet i match="/" -->
<!-- Ex 2: Genera HTML bàsic amb <html>, <body> i títol "Biblioteca" -->
<!-- Ex 3: Afegeix paràgraf amb "Llista de documents disponibles" -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Biblioteca</title>
      </head>
      <body>
        <h1>Biblioteca</h1>
        <p>Llista de documents disponibles</p>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>