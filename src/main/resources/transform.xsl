<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="*">
        <person>
            <xsl:attribute name="user"><xsl:value-of select='@user'/></xsl:attribute>
            <first-name><xsl:value-of select="firstName" /></first-name>
            <last-name><xsl:value-of select="lastName" /></last-name>
            <fullname><xsl:value-of select="concat(firstName, ' ', lastName)" /></fullname>
            <city><xsl:value-of select="city" /></city>
        </person>
    </xsl:template>
</xsl:stylesheet>