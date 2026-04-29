<?xml version="1.0" encoding="UTF-8"?>
<!-- Bloc 13 - Ex 2: Text pla amb una línia per llibre: Títol - Autor - Any -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>

  <xsl:template match="/">
    <xsl:for-each select="/biblioteca/llibre">
      <xsl:value-of select="titol"/>
      <xsl:text> - </xsl:text>
      <xsl:value-of select="autor"/>
      <xsl:text> - </xsl:text>
      <xsl:value-of select="any"/>
      <xsl:text>&#10;</xsl:text>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
