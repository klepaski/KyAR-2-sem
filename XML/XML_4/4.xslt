<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
      	<table border="2">
      		<tr bgcolor="pink">
      			<td style="text-align:center">Фамилия</td>
      			<td style="text-align:center">Имя</td>
      			<td style="text-align:center">ЦТ</td>
      			<td style="text-align:center">Год рождения</td>
            <td style="text-align:center">Средний балл</td>
      		</tr>

      	<xsl:for-each select="children/child">
          <!--сортировка по году рождения-->
          <xsl:sort order="ascending" select="YEAR"/>
      		<tr>            
            <td><xsl:value-of select="SURNAME"/></td>
      			<td><xsl:value-of select="NAME"/></td>
            <td><xsl:value-of select="PASSING"/></td>
            <td><xsl:value-of select="YEAR"/></td>
            
            <xsl:choose>
                  <!--зеленым цветом балл = 6-->
                  <xsl:when test="SR = 6">
                    <td bgcolor="green">
                      <xsl:value-of select="SR"/>
                    </td>
                  </xsl:when>
                  
                  <!--красным цветом балл < 6-->
                  <xsl:when test="SR &lt; 6">
                    <td bgcolor="red">
                      <xsl:value-of select="SR"/>
                    </td>
                  </xsl:when>
              
                  <!--иначе просто вывод-->
                  <xsl:otherwise>
                    <td> <xsl:value-of select="SR"/> </td>
                  </xsl:otherwise>
            </xsl:choose>
            
      		</tr>         
      	</xsl:for-each>
      	</table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>


