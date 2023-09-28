<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:apply-templates select="//team"/>
    </xsl:template>
    <xsl:template match="team">
<!-- 
- platform: teamtracker
  league_id: NFL
  team_id: DET
  name: Detroit Lions        
-->
        <xsl:text>- platform: teamtracker</xsl:text><xsl:text>&#10;</xsl:text>
        <xsl:text>  league_id: NCAAF</xsl:text><xsl:text>&#10;</xsl:text>
        <xsl:text>  team_id: </xsl:text><xsl:value-of select="abbreviation"/><xsl:text>&#10;</xsl:text>
        <xsl:text>  name: </xsl:text><xsl:value-of select="displayName"/><xsl:text>&#10;</xsl:text>
    </xsl:template>
</xsl:stylesheet>