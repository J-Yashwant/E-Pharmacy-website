<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
    <head>
        <title><xsl:value-of select="registrationForm/title"/></title>
        <style>
            body {
                font-family: Arial;
                background-color: #9abe54;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .container {
                background-color: #000;
                padding: 20px;
                border-radius: 8px;
                color: white;
                text-align: center;
            }
            label {
                color: #d62e63;
                display: inline-block;
                width: 140px;
                text-align: right;
            }
            input {
                margin: 5px 0;
                padding: 8px;
                border-radius: 4px;
            }
            button {
                padding: 10px 20px;
                background-color: #d62e63;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1><xsl:value-of select="registrationForm/header/mainTitle"/></h1>
            <h2><xsl:value-of select="registrationForm/header/subTitle"/></h2>
            <hr/>
            <form method="get">
                <xsl:attribute name="action">
                    <xsl:value-of select="registrationForm/submitButton/action"/>
                </xsl:attribute>

                <xsl:for-each select="registrationForm/fields/field">
                    <div class="form-group">
                        <label><xsl:value-of select="label"/>:</label>
                        <input>
                            <xsl:attribute name="type">
                                <xsl:value-of select="type"/>
                            </xsl:attribute>
                            <xsl:attribute name="placeholder">
                                <xsl:value-of select="placeholder"/>
                            </xsl:attribute>
                            <xsl:if test="required='true'">
                                <xsl:attribute name="required">required</xsl:attribute>
                            </xsl:if>
                        </input>
                    </div>
                </xsl:for-each>
                <br/>
                <button type="submit">
                    <xsl:value-of select="registrationForm/submitButton/text"/>
                </button>
            </form>
        </div>
    </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
