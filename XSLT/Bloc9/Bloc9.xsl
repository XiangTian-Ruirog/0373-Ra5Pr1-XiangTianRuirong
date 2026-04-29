<?xml version="1.0" encoding="UTF-8"?>
<!-- Bloc 9 - XSLT Nivell 3: Recorregut amb xsl:for-each -->
<!-- Ex 1: Llista ul amb títol de tots els llibres -->
<!-- Ex 2: Llista ul amb "títol - autor" per a cada llibre -->
<!-- Ex 3: Taula HTML amb Títol, Autor i Any -->
<!-- Ex 4: Taula HTML amb Títol, Autor, Any i Preu -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Biblioteca - For-each</title>
        <style>
          table { border-collapse: collapse; width: 100%; }
          th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
          th { background-color: #005f8e; color: white; }
        </style>
      </head>
      <body>
        <h1>Biblioteca</h1>

        <!-- Ex 1: Llista de títols -->
        <h2>Títols dels llibres</h2>
        <ul>
          <xsl:for-each select="/biblioteca/llibre">
            <li><xsl:value-of select="titol"/></li>
          </xsl:for-each>
        </ul>

        <!-- Ex 2: Llista títol - autor -->
        <h2>Títol - Autor</h2>
        <ul>
          <xsl:for-each select="/biblioteca/llibre">
            <li>
              <xsl:value-of select="titol"/> - <xsl:value-of select="autor"/>
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ex 3: Taula amb Títol, Autor i Any -->
        <h2>Taula de llibres (3 columnes)</h2>
        <table>
          <tr>
            <th>Títol</th>
            <th>Autor</th>
            <th>Any</th>
          </tr>
          <xsl:for-each select="/biblioteca/llibre">
            <tr>
              <td><xsl:value-of select="titol"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="any"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Ex 4: Taula amb Títol, Autor, Any i Preu -->
        <h2>Taula de llibres (4 columnes)</h2>
        <table>
          <tr>
            <th>Títol</th>
            <th>Autor</th>
            <th>Any</th>
            <th>Preu</th>
          </tr>
          <xsl:for-each select="/biblioteca/llibre">
            <tr>
              <td><xsl:value-of select="titol"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="any"/></td>
              <td><xsl:value-of select="preu"/> €</td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
