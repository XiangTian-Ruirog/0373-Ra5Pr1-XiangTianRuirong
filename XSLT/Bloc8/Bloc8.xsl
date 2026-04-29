<?xml version="1.0" encoding="UTF-8"?>
<!-- Bloc 8 - XSLT Nivell 2: Mostrar valors concrets -->
<!-- Ex 1: Títol del primer llibre -->
<!-- Ex 2: Títol i autor del primer llibre -->
<!-- Ex 3: Codi de la revista -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Biblioteca - Valors concrets</title>
      </head>
      <body>
        <h1>Biblioteca</h1>

        <!-- Ex 1: Títol del primer llibre -->
        <h2>Títol del primer llibre</h2>
        <p><xsl:value-of select="/biblioteca/llibre[1]/titol"/></p>

        <!-- Ex 2: Títol i autor del primer llibre -->
        <h2>Títol i autor del primer llibre</h2>
        <p>
          <strong>Títol:</strong> <xsl:value-of select="/biblioteca/llibre[1]/titol"/>
        </p>
        <p>
          <strong>Autor:</strong> <xsl:value-of select="/biblioteca/llibre[1]/autor"/>
        </p>

        <!-- Ex 3: Codi de la revista -->
        <h2>Codi de la revista</h2>
        <p><xsl:value-of select="/biblioteca/revista/@codi"/></p>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>