<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
	<table border="2" style="text-align:center">
		<tr bgcolor="#9acd32">
		<td>Университет</td>
		<td>Проходной балл</td>
		<td>Набор</td>
		<td>Город</td>
	</tr>
<!--вывод. блока эл-тов для каждого FUC,Un-->
<xsl:for-each select="FACULTY/University">
	<tr>
		<td><xsl:value-of select="NAME"></xsl:value-of></td>
		<td><xsl:value-of select="BALL"></xsl:value-of></td>
		<td><xsl:value-of select="NABOR"></xsl:value-of></td>
		<td><xsl:value-of select="CITY"></xsl:value-of></td>
	</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>


