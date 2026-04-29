<?xml version="1.0" encoding="UTF-8"?>
<!-- Bloc 12 - XSLT Nivell 6: Plantilles -->
<!-- Ex 1: Plantilla per a llibre que genera <li> amb el títol -->
<!-- Ex 2: Plantilla principal aplica plantilles a tots els llibres -->
<!-- Ex 3: Plantilla específica per a revista -->
<!-- Ex 4: Sortida amb dues seccions: llibres i revistes -->
<!-- Ex 5: Pàgina HTML completa amb títol, llista de llibres i llista de revistes -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <!-- Plantilla principal -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Biblioteca - Plantilles</title>
        <style>
          body { font-family: Arial, sans-serif; max-width: 800px; margin: 30px auto; }
          h1 { color: #005f8e; }
          h2 { color: #333; border-bottom: 2px solid #005f8e; padding-bottom: 5px; }
          ul { list-style: disc; padding-left: 20px; }
          li { margin: 6px 0; }
          .revista-item { color: #666; font-style: italic; }
        </style>
      </head>
      <body>
        <h1>Biblioteca</h1>

        <!-- Secció de llibres -->
        <h2>Llibres</h2>
        <ul>
          <xsl:apply-templates select="/biblioteca/llibre"/>
        </ul>

        <!-- Secció de revistes -->
        <h2>Revistes</h2>
        <ul>
          <xsl:apply-templates select="/biblioteca/revista"/>
        </ul>

      </body>
    </html>
  </xsl:template>

  <!-- Plantilla per a cada llibre (Ex 1 i 2) -->
  <xsl:template match="llibre">
    <li>
      <strong><xsl:value-of select="titol"/></strong>
      — <xsl:value-of select="autor"/>
      (<xsl:value-of select="any"/>)
    </li>
  </xsl:template>

  <!-- Plantilla per a revista (Ex 3) -->
  <xsl:template match="revista">
    <li class="revista-item">
      <strong><xsl:value-of select="titol"/></strong>
      — <xsl:value-of select="mes"/> <xsl:value-of select="any"/>
      [codi: <xsl:value-of select="@codi"/>]
    </li>
  </xsl:template>

</xsl:stylesheet>
