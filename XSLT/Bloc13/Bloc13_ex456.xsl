<?xml version="1.0" encoding="UTF-8"?>
<!-- Bloc 13 - Ex 3: Classe CSS diferent per estat -->
<!-- Bloc 13 - Ex 4: Nombre total de llibres al final -->
<!-- Bloc 13 - Ex 5: Preu mitjà (XSLT 1.0: sum() div count()) -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Biblioteca - Pàgina completa</title>
        <style>
          body { font-family: Arial, sans-serif; max-width: 900px; margin: 30px auto; }
          h1 { color: #005f8e; }
          h2 { color: #333; border-bottom: 2px solid #005f8e; padding-bottom: 5px; }
          table { border-collapse: collapse; width: 100%; }
          th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
          th { background-color: #005f8e; color: white; }
          /* Ex 3: Classes CSS per estat */
          .disponible { background-color: #e6f4ea; }
          .prestat    { background-color: #fce8e6; }
          .resum { margin-top: 30px; padding: 15px; background: #f0f0f0; border-left: 4px solid #005f8e; }
        </style>
      </head>
      <body>
        <h1>Biblioteca</h1>

        <h2>Catàleg de llibres</h2>
        <table>
          <tr>
            <th>Títol</th>
            <th>Autor</th>
            <th>Any</th>
            <th>Preu</th>
            <th>Estat</th>
          </tr>
          <xsl:for-each select="/biblioteca/llibre">
            <!-- Ex 3: Classe CSS diferent per estat -->
            <tr>
              <xsl:attribute name="class">
                <xsl:value-of select="@estat"/>
              </xsl:attribute>
              <td><xsl:value-of select="titol"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="any"/></td>
              <td><xsl:value-of select="preu"/> €</td>
              <td>
                <xsl:choose>
                  <xsl:when test="@estat='prestat'">En préstec</xsl:when>
                  <xsl:otherwise>Disponible</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Ex 4: Nombre total de llibres -->
        <div class="resum">
          <p><strong>Total de llibres:</strong>
            <xsl:value-of select="count(/biblioteca/llibre)"/>
          </p>
          <!-- Ex 5: Preu mitjà (XSLT 1.0 amb sum() div count()) -->
          <p><strong>Preu mitjà:</strong>
            <xsl:value-of select="format-number(sum(/biblioteca/llibre/preu) div count(/biblioteca/llibre), '0.00')"/> €
          </p>
        </div>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
