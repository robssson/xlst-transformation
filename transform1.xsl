<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <body>
  <head>
  <link rel="stylesheet" href="file:///C:/Users/Tomek/Desktop/ProjektXML/style.css" type="text/css"/>
  <script type="text/javascript" src="file:///C:/Users/Tomek/Desktop/ProjektXML/js.js">&#160;</script> 
  </head>
   <div id="container">
   <div id="logo">Księgarnia internetowa</div>
   <div id="zegar">24:00:00</div>
   <center><h1>Spis książek</h1></center>
   <div id="content">
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Tytuł</th>
        <th>Artysta</th>
        <th>Stron</th>
        <th>Oprawka</th>
        <th>Magazyn</th>
      </tr>
      <xsl:for-each select="ksiegarnia/ksiazka">
      <xsl:sort select="nazwa"/> 
      <xsl:if test="stan = 'dostępna' "> 
        <tr>
         <td><xsl:element name="a">
          <xsl:attribute name="href">
            <xsl:value-of select="nazwa"/>.html
          </xsl:attribute>
          <xsl:value-of select="nazwa"/>
          <td><xsl:value-of select="autor"/></td>
          <td><xsl:value-of select="ilosc_stron"/></td>
          <td><xsl:value-of select="oprawka"/></td>
          <td><xsl:value-of select="stan"/></td>
        </xsl:element></td>  
        </tr>
        </xsl:if>
      </xsl:for-each>
    </table>
    </div>
    </div>
    <div id="footer">Księgarnia internetowa Księgarnia-D14. Wszystkie prawa zastrzeżone.</div>
  </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
