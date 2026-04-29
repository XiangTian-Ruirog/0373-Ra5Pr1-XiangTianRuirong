<?xml version="1.0" encoding="UTF-8"?>
<!-- Bloc 10 - XSLT Nivell 4: Filtres i condicions -->
<!-- Ex 1: Només llibres disponibles -->
<!-- Ex 2: Només llibres amb preu > 12 -->
<!-- Ex 3: Text "Llibre antic" quan any < 1980 -->
<!-- Ex 4: Text "En préstec" o "Disponible" segons estat -->
<!-- Ex 5: Només llibres de gènere fantasia o distopia -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Biblioteca - Filtres i condicions</title>
        <style>
          table { border-collapse: collapse; width: 100%; margin-bottom: 30px; }
          th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
          th { background-color: #005f8e; color: white; }
          .antic { color: #999; font-style: italic; }
          .prestat { color: red; }
          .disponible { color: green; }
        </style>
      </head>
      <body>
        <h1>Biblioteca</h1>

        <!-- Ex 1: Llibres disponibles -->
        <h2>Llibres disponibles</h2>
        <ul>
          <xsl:for-each select="/biblioteca/llibre[@estat='disponible']">
            <li><xsl:value-of select="titol"/></li>
          </xsl:for-each>
        </ul>

        <!-- Ex 2: Llibres amb preu > 12 -->
        <h2>Llibres amb preu superior a 12 €</h2>
        <ul>
          <xsl:for-each select="/biblioteca/llibre[preu>12]">
            <li><xsl:value-of select="titol"/> — <xsl:value-of select="preu"/> €</li>
          </xsl:for-each>
        </ul>

        <!-- Ex 3: "Llibre antic" quan any < 1980 -->
        <h2>Tots els llibres (amb indicació d'antic)</h2>
        <ul>
          <xsl:for-each select="/biblioteca/llibre">
            <li>
              <xsl:value-of select="titol"/>
              <xsl:if test="any &lt; 1980">
                <span class="antic"> — Llibre antic</span>
              </xsl:if>
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ex 4: "En préstec" o "Disponible" segons estat -->
        <h2>Estat de cada llibre</h2>
        <ul>
          <xsl:for-each select="/biblioteca/llibre">
            <li>
              <xsl:value-of select="titol"/> —
              <xsl:choose>
                <xsl:when test="@estat='prestat'">
                  <span class="prestat">En préstec</span>
                </xsl:when>
                <xsl:otherwise>
                  <span class="disponible">Disponible</span>
                </xsl:otherwise>
              </xsl:choose>
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ex 5: Gènere fantasia o distopia -->
        <h2>Llibres de fantasia o distopia</h2>
        <ul>
          <xsl:for-each select="/biblioteca/llibre[genere='fantasia' or genere='distopia']">
            <li><xsl:value-of select="titol"/> (<xsl:value-of select="genere"/>)</li>
          </xsl:for-each>
        </ul>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
