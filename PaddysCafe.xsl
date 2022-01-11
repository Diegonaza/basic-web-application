<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<table id="menuTable" border="1" class="indent">
    <thead>
        <tr>
            <th>Select</th>
            <th>Exercise</th>
            <th>Interval</th>
            <th>Series</th>
        </tr>
    </thead>
    <tbody>
        <xsl:for-each select="//section">
            <tr>
                <td colspan="4">
                    <xsl:value-of select="@name" />
                </td>
            </tr>
            <xsl:for-each select="entry">
                <tr id="{position()}">
                    <xsl:attribute name="vegetarian">
                        <xsl:value-of select="boolean(@vegetarian)" />
                    </xsl:attribute>
                    <td align="center">
                        <input name="item0" type="checkbox" />
                    </td>
                    <td>
                        <xsl:value-of select="exercise" />
                    </td>
                    <td>
                        <xsl:value-of select="interval" />
                    </td>
                    <td align="right">
                        <xsl:value-of select="series" />
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </tbody>
</table>
</xsl:template>
</xsl:stylesheet>