<?xml version="1.0" encoding="UTF-8"?>
<!-- Bloc 13 - XSLT Nivell 7: Transformacions més riques -->
<!-- Ex 1: XML -> XML: llibre->obra, titol->nom, autor->escriptor -->
<!-- Nota: els exercicis 2-5 estan en fitxers separats per claredat -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <obres>
      <xsl:for-each select="/biblioteca/llibre">
        <obra>
          <nom><xsl:value-of select="titol"/></nom>
          <escriptor><xsl:value-of select="autor"/></escriptor>
          <genere><xsl:value-of select="genere"/></genere>
          <any><xsl:value-of select="any"/></any>
          <preu><xsl:value-of select="preu"/></preu>
        </obra>
      </xsl:for-each>
    </obres>
  </xsl:template>

</xsl:stylesheet>
