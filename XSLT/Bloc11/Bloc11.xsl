<?xml version="1.0" encoding="UTF-8"?>
<!-- Bloc 11 - XSLT Nivell 5: Ordenació -->
<!-- Ex 1: Ordenat per any -->
<!-- Ex 2: Ordenat per títol alfabèticament -->
<!-- Ex 3: Ordenat per preu de més car a més barat -->
<!-- Ex 4: Taula HTML ordenada per any -->
<!-- Ex 5: Llibres disponibles ordenats per títol -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Biblioteca - Ordenació</title>
        <style>
          table { border-collapse: collapse; width: 100%; margin-bottom: 30px; }
          th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
          th { background-color: #005f8e; color: white; }
        </style>
      </head>
      <body>
        <h1>Biblioteca</h1>

        <!-- Ex 1: Ordenat per any -->
        <h2>Llibres ordenats per any</h2>
        <ul>
          <xsl:for-each select="/biblioteca/llibre">
            <xsl:sort select="any" data-type="number" order="ascending"/>
            <li><xsl:value-of select="titol"/> (<xsl:value-of select="any"/>)</li>
          </xsl:for-each>
        </ul>

        <!-- Ex 2: Ordenat per títol -->
        <h2>Llibres ordenats per títol</h2>
        <ul>
          <xsl:for-each select="/biblioteca/llibre">
            <xsl:sort select="titol" order="ascending"/>
            <li><xsl:value-of select="titol"/></li>
          </xsl:for-each>
        </ul>

        <!-- Ex 3: Ordenat per preu de més car a més barat -->
        <h2>Llibres de més car a més barat</h2>
        <ul>
          <xsl:for-each select="/biblioteca/llibre">
            <xsl:sort select="preu" data-type="number" order="descending"/>
            <li><xsl:value-of select="titol"/> — <xsl:value-of select="preu"/> €</li>
          </xsl:for-each>
        </ul>

        <!-- Ex 4: Taula ordenada per any -->
        <h2>Taula ordenada per any</h2>
        <table>
          <tr>
            <th>Títol</th>
            <th>Autor</th>
            <th>Any</th>
            <th>Preu</th>
          </tr>
          <xsl:for-each select="/biblioteca/llibre">
            <xsl:sort select="any" data-type="number" order="ascending"/>
            <tr>
              <td><xsl:value-of select="titol"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="any"/></td>
              <td><xsl:value-of select="preu"/> €</td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Ex 5: Disponibles ordenats per títol -->
        <h2>Llibres disponibles ordenats per títol</h2>
        <ul>
          <xsl:for-each select="/biblioteca/llibre[@estat='disponible']">
            <xsl:sort select="titol" order="ascending"/>
            <li><xsl:value-of select="titol"/></li>
          </xsl:for-each>
        </ul>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
