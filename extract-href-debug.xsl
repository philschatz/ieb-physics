<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- remove cnxml specific content from html -->

<xsl:output
  method="txt"
  encoding="UTF-8"
  indent="yes"/>

<xsl:strip-space elements="*"/>

<!-- Traversing -->
<xsl:template match="@*|node()">
  <xsl:apply-templates select="@*|node()"/>
</xsl:template>

<xsl:template match="@href">
  <xsl:value-of select="concat(., '&#xa;')"/>
</xsl:template>

</xsl:stylesheet>