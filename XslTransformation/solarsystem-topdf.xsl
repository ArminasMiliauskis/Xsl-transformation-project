<?xml version="1.0" encoding="UTF-8"?>
 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no" />
 
    <xsl:template match="/">
        <fo:root language="EN">
            <fo:layout-master-set>
                <fo:simple-page-master
                    master-name="A4-portrail"
                    page-height="297mm"
                    page-width="210mm"
                    margin-top="5mm"
                    margin-bottom="5mm"
                    margin-left="25mm"
                    margin-right="5mm"
                >
                    <fo:region-body margin-top="5mm" margin-bottom="5mm" />
 
                    <fo:region-before 
                        region-name="xsl-region-before" 
                        extent="25mm" 
                        display-align="center" 
                        precedence="true" 
                    />
                    <fo:region-after 
                        region-name="xsl-region-after" 
                        extent=".5in"
                        precedence="true"
                    />     
                               
                </fo:simple-page-master>
                
            </fo:layout-master-set>
                                         
                                                                                                    
            <fo:page-sequence master-reference="A4-portrail">
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block text-align="end">
                        <fo:page-number/>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body" border-collapse="collapse" reference-orientation="0">
                                                                                          
                    <!-- SVG 
         <fo:block>
             <fo:instream-foreign-object>
                 <svg:svg xmlns:svg="http://www.w3.org/2000/svg" width="20" height="20">
                     <svg:g style="fill:red; stroke:#000000">
                         <svg:rect x="0" y="0" width="15" height="35"/>
                         <svg:rect x="5" y="5" width="5" height="15"/>
                         <svg:rect x="10" y="10" width="25" height="15"/>
                     </svg:g>
                 </svg:svg>
             </fo:instream-foreign-object>
         </fo:block>
                    -->
                    <fo:block>
                        
                    </fo:block>
                    
                                                                    
                    <fo:block margin-left="28%" font-size="20pt">Solar System
                        <fo:instream-foreign-object>
                            <svg version="1.1" id="Icons" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20">	 
                                <style type="text/css">
                                    .st0{fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
                                </style>
                                <circle class="st0" cx="16" cy="16" r="3"/>
                                <circle class="st0" cx="25" cy="7" r="2"/>
                                <circle class="st0" cx="15" cy="24" r="2"/>
                                <path class="st0" d="M13,23.4c-2.9-1.2-5-4.1-5-7.4c0-4.4,3.6-8,8-8s8,3.6,8,8c0,4.1-3.1,7.5-7,7.9"/>
                                <path class="st0" d="M26.5,8.3c1.6,2.2,2.5,4.8,2.5,7.7c0,7.2-5.8,13-13,13S3,23.2,3,16S8.8,3,16,3c2.9,0,5.5,0.9,7.7,2.5"/>
                            </svg>
                        </fo:instream-foreign-object>
                    </fo:block>
                    <fo:block>
                        <fo:leader leader-length="100%" leader-pattern="rule" 
                                   rule-thickness="0.5mm" color="white"/>
                    </fo:block>                                                                         
                    <fo:table 
                        table-layout="fixed" 
                        width="89.5%" 
                        font-size="10pt"
                        border-color="black"
                        border-width="0.35mm"
                        border-style="solid"
                        text-align="center"
                        display-align="center"
                        space-after="5mm"
                    >
                        <fo:table-column column-width="proportional-column-width(20)" />
                        <fo:table-column column-width="proportional-column-width(30)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        
                        
                        <fo:table-body font-size="95%">
                            <fo:table-row
                                height="8mm"
                                border-color="black"
                                border-width="0.35mm"
                                border-style="solid"
                                text-align="center"
                                display-align="center"
                                space-after="5mm"
                            >
                                <fo:table-cell>
                                    <fo:block>
                                        Age
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Age unit
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Location
                                    </fo:block>
                                </fo:table-cell>
                                                                
                            </fo:table-row>
                            
                            <xsl:for-each select="solarSystem">
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Age" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Age-unit" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Location" />
                                        </fo:block>
                                    </fo:table-cell>
                                 
                                </fo:table-row>
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>
                    
                    <fo:block>                                      
                        <fo:external-graphic content-height="150" content-width="16.5%" scaling="non-uniform" src="solarsystem.jpg"/>                           
                    </fo:block>
                    
                    <!-- Star -->
                    <fo:block>Stars</fo:block>
                    
                    <fo:table 
                        table-layout="fixed" 
                        width="89.5%" 
                        font-size="10pt"
                        border-color="black"
                        border-width="0.35mm"
                        border-style="solid"
                        text-align="center"
                        display-align="center"
                        space-after="5mm"
                    >
                        <fo:table-column column-width="proportional-column-width(20)" />
                        <fo:table-column column-width="proportional-column-width(30)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        
                        <fo:table-body font-size="95%">
                            <fo:table-row
                                height="8mm"
                                border-color="black"
                                border-width="0.35mm"
                                border-style="solid"
                                text-align="center"
                                display-align="center"
                                space-after="5mm"
                            >
                                <fo:table-cell>
                                    <fo:block>
                                        Name
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Mass
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Mass unit
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Volume
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Age
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Velocity
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Velocity unit
                                    </fo:block>
                                </fo:table-cell>
                                                                
                            </fo:table-row>
                            
                            
                            <xsl:for-each select="solarSystem/Stars/Star">
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Name" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Mass" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Mass-unit" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Volume" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Age" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Velocity" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Velocity-unit" />
                                        </fo:block>
                                    </fo:table-cell>
                                 
                                </fo:table-row>
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>
                    
                    <!-- Inner planets tables -->
                    <fo:block>Inner planets</fo:block>
                    
                    
                    <fo:table 
                        table-layout="fixed" 
                        width="89.5%" 
                        font-size="10pt"
                        border-color="black"
                        border-width="0.35mm"
                        border-style="solid"
                        text-align="center"
                        display-align="center"
                        space-after="5mm"
                    >
                        <fo:table-column column-width="proportional-column-width(20)" />
                        <fo:table-column column-width="proportional-column-width(30)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        
                        <fo:table-body font-size="95%">
                            <fo:table-row
                                height="8mm"
                                border-color="black"
                                border-width="0.35mm"
                                border-style="solid"
                                text-align="center"
                                display-align="center"
                                space-after="5mm"
                            >
                                <fo:table-cell>
                                    <fo:block>
                                        Name
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Mass
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Mass unit
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Volume
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Velocity
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Velocity unit
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Type
                                    </fo:block>
                                </fo:table-cell>
                                                                
                            </fo:table-row>
                            
                            
                            <xsl:for-each select="solarSystem/Planets/Inner-planets/Planet" >
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Name" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Mass" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Mass-unit" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Volume" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Velocity" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Velocity-unit" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Type" />
                                        </fo:block>
                                    </fo:table-cell>
                                 
                                </fo:table-row>
                                
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>
                    
                    
                    
                    
                    
                    <!-- Outer planets tables -->
                    <fo:block>Outer planets</fo:block>                  
                    <fo:table 
                        table-layout="fixed" 
                        width="89.5%" 
                        font-size="10pt"
                        border-color="black"
                        border-width="0.35mm"
                        border-style="solid"
                        text-align="center"
                        display-align="center"
                        space-after="5mm"
                    >
                        <fo:table-column column-width="proportional-column-width(20)" />
                        <fo:table-column column-width="proportional-column-width(30)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        <fo:table-column column-width="proportional-column-width(25)" />
                        
                        <fo:table-body font-size="95%">
                            <fo:table-row
                                height="8mm"
                                border-color="black"
                                border-width="0.35mm"
                                border-style="solid"
                                text-align="center"
                                display-align="center"
                                space-after="5mm"
                            >
                                <fo:table-cell>
                                    <fo:block>
                                        Name
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Mass
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Mass unit
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Volume
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Velocity
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Velocity unit
                                    </fo:block>
                                </fo:table-cell>
                                
                                <fo:table-cell>
                                    <fo:block>
                                        Type
                                    </fo:block>
                                </fo:table-cell>
                                                                
                            </fo:table-row>
                            
                            
                            <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Name" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Mass" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Mass-unit" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Volume" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Velocity" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Velocity-unit" />
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="Type" />
                                        </fo:block>
                                    </fo:table-cell>
                                 
                                </fo:table-row>
                               
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>
                    
                    <!--
                    <fo:block>                                      
                        <fo:external-graphic content-height="150" content-width="50%" scaling="uniform" src="Jupiter.png"/>                           
                    </fo:block>
                    -->
                    <fo:block>
                        <fo:leader leader-length="100%" leader-pattern="rule" 
                                   rule-thickness="70mm" color="white"/>
                    </fo:block>
                    <fo:block>
                        <fo:leader leader-length="100%" leader-pattern="rule" 
                                   rule-thickness="15mm" color="white"/>
                    </fo:block>
                    <fo:block margin-left="27%" font-size="20pt">Solar system objects 
                        <fo:instream-foreign-object>
                            <svg version="1.1" id="Icons" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20">
	 
                                <style type="text/css">
                                    .st0{fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
                                </style>
                                <circle class="st0" cx="16" cy="16" r="10"/>
                                <path class="st0" d="M21.5,7.7c3.7-1.3,6.6-1.3,7.5,0.1c1.5,2.3-3,7.9-10.2,12.5s-14.1,6.3-15.6,4c-0.9-1.4,0.3-3.8,2.8-6.5"/>
                            </svg>
                        </fo:instream-foreign-object>
                    </fo:block>
                    
                    
                    
                    <fo:block>
                        <fo:table 
                            table-layout="fixed" 
                            width="89.5%" 
                            font-size="10pt"
                            
                            text-align="right"
                            display-align="center"
                            space-after="5mm"                              
                        >
                            <fo:table-column column-width="proportional-column-width(30)" />
                            <fo:table-column column-width="proportional-column-width(50)" />
                            <fo:table-column column-width="proportional-column-width(20)" />                           
                            <fo:table-body font-size="95%">
                                <fo:table-row
                                    height="8mm"
                                    
                                    text-align="right"
                                    display-align="center"
                                    space-after="5mm"
                                >
                                    <xsl:for-each select="solarSystem/Stars/Star" >
                                        <xsl:if test="(Name = 'Sun')">
                                            <fo:table-cell>
                                                <fo:block>
                                                    Name - <xsl:value-of select="Name"/>
                                                    <fo:block/>                                                    
                                                    Mass - <xsl:value-of select="Mass"/>
                                                    <fo:block/>
                                                    Mass unit - <xsl:value-of select="Mass-unit"/>
                                                    <fo:block/>
                                                    Volume - <xsl:value-of select="Volume"/>
                                                    <fo:block/>
                                                    Age - <xsl:value-of select="Age"/>
                                                    <fo:block/>
                                                    Velocity - <xsl:value-of select="Velocity"/>
                                                    <fo:block/>
                                                    Velocity unit - <xsl:value-of select="Velocity-unit"/>
                                                    <fo:block/>                                                                                                                                                  
                                                </fo:block>
                                            </fo:table-cell>
                                        </xsl:if>
                                    </xsl:for-each>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            <fo:external-graphic content-height="150" content-width="50%" scaling="uniform" src="Sun.png"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>                                                    
                                            
                                                                                                                                                                                           
                                        </fo:block>
                                    </fo:table-cell>
                                        
                                </fo:table-row>
                                                                                      
                            </fo:table-body>                            
                        </fo:table>
                    </fo:block>
                    <fo:block>
                         
                        
                          
                    </fo:block>
                    <fo:block>
                        <fo:table 
                            table-layout="fixed" 
                            width="89.5%" 
                            font-size="10pt"
                            border-color="white"
                            border-width="0.35mm"
                            border-style="solid"
                            text-align="right"
                            display-align="center"
                            space-after="5mm"                              
                        >
                            <fo:table-column column-width="proportional-column-width(30)" />
                            <fo:table-column column-width="proportional-column-width(50)" />
                            <fo:table-column column-width="proportional-column-width(20)" />                           
                            <fo:table-body font-size="95%">
                                <fo:table-row
                                    height="8mm"
                                    border-color="white"
                                    border-width="0.35mm"
                                    border-style="solid"
                                    text-align="right"
                                    display-align="center"
                                    space-after="5mm"
                                >
                                    <xsl:for-each select="solarSystem/Planets/Inner-planets/Planet" >
                                        <xsl:if test="(Name = 'Mercury')">
                                            <fo:table-cell>
                                                <fo:block>
                                                    Name - <xsl:value-of select="Name"/>
                                                    <fo:block/>                                                    
                                                    Mass - <xsl:value-of select="Mass"/>
                                                    <fo:block/>
                                                    Mass unit - <xsl:value-of select="Mass-unit"/>
                                                    <fo:block/>
                                                    Volume - <xsl:value-of select="Volume"/>
                                                    <fo:block/>
                                                    Velocity - <xsl:value-of select="Velocity"/>
                                                    <fo:block/>
                                                    Velocity unit - <xsl:value-of select="Velocity-unit"/>
                                                    <fo:block/>
                                                    Type - <xsl:value-of select="Type"/>
                                                    <fo:block/>                                                                                                                                                  
                                                </fo:block>
                                            </fo:table-cell>
                                        </xsl:if>
                                    </xsl:for-each>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            <fo:external-graphic content-height="150" content-width="50%" scaling="uniform" src="Mercury.png"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>                                                    
                                                                                                                                                                                         
                                        </fo:block>
                                    </fo:table-cell>
                                        
                                </fo:table-row>
                                                                                      
                            </fo:table-body>                            
                        </fo:table>
                    </fo:block>
                    
                    <fo:block>
                        <fo:table 
                            table-layout="fixed" 
                            width="89.5%" 
                            font-size="10pt"
                            border-color="white"
                            border-width="0.35mm"
                            border-style="solid"
                            text-align="right"
                            display-align="center"
                            space-after="5mm"                              
                        >
                            <fo:table-column column-width="proportional-column-width(30)" />
                            <fo:table-column column-width="proportional-column-width(50)" />
                            <fo:table-column column-width="proportional-column-width(20)" />                           
                            <fo:table-body font-size="95%">
                                <fo:table-row
                                    height="8mm"
                                    border-color="white"
                                    border-width="0.35mm"
                                    border-style="solid"
                                    text-align="right"
                                    display-align="center"
                                    space-after="5mm"
                                >
                                    <xsl:for-each select="solarSystem/Planets/Inner-planets/Planet" >
                                        <xsl:if test="(Name = 'Venus')">
                                            <fo:table-cell>
                                                <fo:block>
                                                    Name - <xsl:value-of select="Name"/>
                                                    <fo:block/>                                                    
                                                    Mass - <xsl:value-of select="Mass"/>
                                                    <fo:block/>
                                                    Mass unit - <xsl:value-of select="Mass-unit"/>
                                                    <fo:block/>
                                                    Volume - <xsl:value-of select="Volume"/>
                                                    <fo:block/>
                                                    Velocity - <xsl:value-of select="Velocity"/>
                                                    <fo:block/>
                                                    Velocity unit - <xsl:value-of select="Velocity-unit"/>
                                                    <fo:block/>
                                                    Type - <xsl:value-of select="Type"/>
                                                    <fo:block/>                                                                                                                                                  
                                                </fo:block>
                                            </fo:table-cell>
                                        </xsl:if>
                                    </xsl:for-each>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            <fo:external-graphic content-height="150" content-width="50%" scaling="uniform" src="Venus.png"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>                                                    
                                                                                                                                                                                              
                                        </fo:block>
                                    </fo:table-cell>
                                        
                                </fo:table-row>
                                                                                      
                            </fo:table-body>                            
                        </fo:table>
                    </fo:block>
                    
                    <fo:block>
                        <fo:table 
                            table-layout="fixed" 
                            width="89.5%" 
                            font-size="10pt"
                            border-color="white"
                            border-width="0.35mm"
                            border-style="solid"
                            text-align="right"
                            display-align="center"
                            space-after="5mm"                              
                        >
                            <fo:table-column column-width="proportional-column-width(30)" />
                            <fo:table-column column-width="proportional-column-width(50)" />
                            <fo:table-column column-width="proportional-column-width(20)" />                           
                            <fo:table-body font-size="95%">
                                <fo:table-row
                                    height="8mm"
                                    border-color="white"
                                    border-width="0.35mm"
                                    border-style="solid"
                                    text-align="right"
                                    display-align="center"
                                    space-after="5mm"
                                >
                                    <xsl:for-each select="solarSystem/Planets/Inner-planets/Planet" >
                                        <xsl:if test="(Name = 'Earth')">
                                            <fo:table-cell>
                                                <fo:block>
                                                    Name - <xsl:value-of select="Name"/>
                                                    <fo:block/>                                                    
                                                    Mass - <xsl:value-of select="Mass"/>
                                                    <fo:block/>
                                                    Mass unit - <xsl:value-of select="Mass-unit"/>
                                                    <fo:block/>
                                                    Volume - <xsl:value-of select="Volume"/>
                                                    <fo:block/>
                                                    Velocity - <xsl:value-of select="Velocity"/>
                                                    <fo:block/>
                                                    Velocity unit - <xsl:value-of select="Velocity-unit"/>
                                                    <fo:block/>
                                                    Type - <xsl:value-of select="Type"/>
                                                    <fo:block/>                                                                                                                                                  
                                                </fo:block>
                                            </fo:table-cell>
                                        </xsl:if>
                                    </xsl:for-each>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            <fo:external-graphic content-height="150" content-width="50%" scaling="uniform" src="Earth.png"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>                                                    
                                            Natural satellites: <fo:block/>
                                            <xsl:for-each select="solarSystem/Planets/Inner-planets/Planet" >
                                                <xsl:if test="(Name = 'Earth')">
                                                    
                                                    <xsl:value-of select="Natural-satellites"/>
                                                    <fo:block/>
                                                    
                                                </xsl:if>
                                            </xsl:for-each>                                                                                                                                                  
                                        </fo:block>
                                    </fo:table-cell>
                                        
                                </fo:table-row>
                                                                                      
                            </fo:table-body>                            
                        </fo:table>
                    </fo:block>
                    
                    <fo:block>
                        <fo:table 
                            table-layout="fixed" 
                            width="89.5%" 
                            font-size="10pt"
                            border-color="white"
                            border-width="0.35mm"
                            border-style="solid"
                            text-align="right"
                            display-align="center"
                            space-after="5mm"                              
                        >
                            <fo:table-column column-width="proportional-column-width(30)" />
                            <fo:table-column column-width="proportional-column-width(50)" />
                            <fo:table-column column-width="proportional-column-width(20)" />                           
                            <fo:table-body font-size="95%">
                                <fo:table-row
                                    height="8mm"
                                    border-color="white"
                                    border-width="0.35mm"
                                    border-style="solid"
                                    text-align="right"
                                    display-align="center"
                                    space-after="5mm"
                                >
                                    <xsl:for-each select="solarSystem/Planets/Inner-planets/Planet" >
                                        <xsl:if test="(Name = 'Mars')">
                                            <fo:table-cell>
                                                <fo:block>
                                                    Name - <xsl:value-of select="Name"/>
                                                    <fo:block/>                                                    
                                                    Mass - <xsl:value-of select="Mass"/>
                                                    <fo:block/>
                                                    Mass unit - <xsl:value-of select="Mass-unit"/>
                                                    <fo:block/>
                                                    Volume - <xsl:value-of select="Volume"/>
                                                    <fo:block/>
                                                    Velocity - <xsl:value-of select="Velocity"/>
                                                    <fo:block/>
                                                    Velocity unit - <xsl:value-of select="Velocity-unit"/>
                                                    <fo:block/>
                                                    Type - <xsl:value-of select="Type"/>
                                                    <fo:block/>                                                                                                                                                  
                                                </fo:block>
                                            </fo:table-cell>
                                        </xsl:if>
                                    </xsl:for-each>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            <fo:external-graphic content-height="150" content-width="50%" scaling="uniform" src="Mars.png"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>                                                    
                                            Natural satellites: <fo:block/>
                                            <xsl:for-each select="solarSystem/Planets/Inner-planets/Planet" >
                                                <xsl:if test="(Name = 'Mars')">
                                                    
                                                    <xsl:value-of select="Natural-satellites"/>
                                                    <fo:block/>
                                                    
                                                </xsl:if>
                                            </xsl:for-each>                                                                                                                                                  
                                        </fo:block>
                                    </fo:table-cell>
                                        
                                </fo:table-row>
                                                                                      
                            </fo:table-body>                            
                        </fo:table>
                    </fo:block>
                    
                    <fo:block>
                        <fo:table 
                            table-layout="fixed" 
                            width="89.5%" 
                            font-size="10pt"
                            border-color="white"
                            border-width="0.35mm"
                            border-style="solid"
                            text-align="right"
                            display-align="center"
                            space-after="5mm"                              
                        >
                            <fo:table-column column-width="proportional-column-width(30)" />
                            <fo:table-column column-width="proportional-column-width(50)" />
                            <fo:table-column column-width="proportional-column-width(20)" />                           
                            <fo:table-body font-size="95%">
                                <fo:table-row
                                    height="8mm"
                                    border-color="white"
                                    border-width="0.35mm"
                                    border-style="solid"
                                    text-align="right"
                                    display-align="center"
                                    space-after="5mm"
                                >
                                    <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                        <xsl:if test="(Name = 'Jupiter')">
                                            <fo:table-cell>
                                                <fo:block>
                                                    Name - <xsl:value-of select="Name"/>
                                                    <fo:block/>                                                    
                                                    Mass - <xsl:value-of select="Mass"/>
                                                    <fo:block/>
                                                    Mass unit - <xsl:value-of select="Mass-unit"/>
                                                    <fo:block/>
                                                    Volume - <xsl:value-of select="Volume"/>
                                                    <fo:block/>
                                                    Velocity - <xsl:value-of select="Velocity"/>
                                                    <fo:block/>
                                                    Velocity unit - <xsl:value-of select="Velocity-unit"/>
                                                    <fo:block/>
                                                    Type - <xsl:value-of select="Type"/>
                                                    <fo:block/>                                                                                                                                                  
                                                </fo:block>
                                            </fo:table-cell>
                                        </xsl:if>
                                    </xsl:for-each>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            <fo:external-graphic content-height="150" content-width="50%" scaling="uniform" src="Jupiter.png"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>                                                    
                                            Natural satellites: <fo:block/>
                                            <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                                <xsl:if test="(Name = 'Jupiter')">
                                                    
                                                    <xsl:value-of select="Natural-satellites"/>
                                                    <fo:block/>
                                                    
                                                </xsl:if>
                                            </xsl:for-each>                                                                                                                                                  
                                        </fo:block>
                                    </fo:table-cell>
                                        
                                </fo:table-row>
                                                                                      
                            </fo:table-body>                            
                        </fo:table>
                    </fo:block>
                    
                    <fo:block>
                        <fo:table 
                            table-layout="fixed" 
                            width="89.5%" 
                            font-size="10pt"
                            border-color="white"
                            border-width="0.35mm"
                            border-style="solid"
                            text-align="right"
                            display-align="center"
                            space-after="5mm"                              
                        >
                            <fo:table-column column-width="proportional-column-width(30)" />
                            <fo:table-column column-width="proportional-column-width(50)" />
                            <fo:table-column column-width="proportional-column-width(20)" />                           
                            <fo:table-body font-size="95%">
                                <fo:table-row
                                    height="8mm"
                                    border-color="white"
                                    border-width="0.35mm"
                                    border-style="solid"
                                    text-align="right"
                                    display-align="center"
                                    space-after="5mm"
                                >
                                    <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                        <xsl:if test="(Name = 'Saturn')">
                                            <fo:table-cell>
                                                <fo:block>
                                                    Name - <xsl:value-of select="Name"/>
                                                    <fo:block/>                                                    
                                                    Mass - <xsl:value-of select="Mass"/>
                                                    <fo:block/>
                                                    Mass unit - <xsl:value-of select="Mass-unit"/>
                                                    <fo:block/>
                                                    Volume - <xsl:value-of select="Volume"/>
                                                    <fo:block/>
                                                    Velocity - <xsl:value-of select="Velocity"/>
                                                    <fo:block/>
                                                    Velocity unit - <xsl:value-of select="Velocity-unit"/>
                                                    <fo:block/>
                                                    Type - <xsl:value-of select="Type"/>
                                                    <fo:block/>                                                                                                                                                  
                                                </fo:block>
                                            </fo:table-cell>
                                        </xsl:if>
                                    </xsl:for-each>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            <fo:external-graphic content-height="150" content-width="50%" scaling="uniform" src="Saturn.png"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>                                                    
                                            Natural satellites: <fo:block/>
                                            <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                                <xsl:if test="(Name = 'Saturn')">
                                                    
                                                    <xsl:value-of select="Natural-satellites"/>
                                                    <fo:block/>
                                                    
                                                </xsl:if>
                                            </xsl:for-each>                                                                                                                                                  
                                        </fo:block>
                                    </fo:table-cell>
                                        
                                </fo:table-row>
                                                                                      
                            </fo:table-body>                            
                        </fo:table>
                    </fo:block>
                    
                    <fo:block>
                        <fo:table 
                            table-layout="fixed" 
                            width="89.5%" 
                            font-size="10pt"
                            border-color="white"
                            border-width="0.35mm"
                            border-style="solid"
                            text-align="right"
                            display-align="center"
                            space-after="5mm"                              
                        >
                            <fo:table-column column-width="proportional-column-width(30)" />
                            <fo:table-column column-width="proportional-column-width(50)" />
                            <fo:table-column column-width="proportional-column-width(20)" />                           
                            <fo:table-body font-size="95%">
                                <fo:table-row
                                    height="8mm"
                                    border-color="white"
                                    border-width="0.35mm"
                                    border-style="solid"
                                    text-align="right"
                                    display-align="center"
                                    space-after="5mm"
                                >
                                    <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                        <xsl:if test="(Name = 'Uranus')">
                                            <fo:table-cell>
                                                <fo:block>
                                                    Name - <xsl:value-of select="Name"/>
                                                    <fo:block/>                                                    
                                                    Mass - <xsl:value-of select="Mass"/>
                                                    <fo:block/>
                                                    Mass unit - <xsl:value-of select="Mass-unit"/>
                                                    <fo:block/>
                                                    Volume - <xsl:value-of select="Volume"/>
                                                    <fo:block/>
                                                    Velocity - <xsl:value-of select="Velocity"/>
                                                    <fo:block/>
                                                    Velocity unit - <xsl:value-of select="Velocity-unit"/>
                                                    <fo:block/>
                                                    Type - <xsl:value-of select="Type"/>
                                                    <fo:block/>                                                                                                                                                  
                                                </fo:block>
                                            </fo:table-cell>
                                        </xsl:if>
                                    </xsl:for-each>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            <fo:external-graphic content-height="150" content-width="50%" scaling="uniform" src="Uranus.png"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>                                                    
                                            Natural satellites: <fo:block/>
                                            <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                                <xsl:if test="(Name = 'Uranus')">
                                                    
                                                    <xsl:value-of select="Natural-satellites"/>
                                                    <fo:block/>
                                                    
                                                </xsl:if>
                                            </xsl:for-each>                                                                                                                                                  
                                        </fo:block>
                                    </fo:table-cell>
                                        
                                </fo:table-row>
                                                                                      
                            </fo:table-body>                            
                        </fo:table>
                    </fo:block>
                    
                    <fo:block>
                        <fo:table 
                            table-layout="fixed" 
                            width="89.5%" 
                            font-size="10pt"
                            border-color="white"
                            border-width="0.35mm"
                            border-style="solid"
                            text-align="right"
                            display-align="center"
                            space-after="5mm"                              
                        >
                            <fo:table-column column-width="proportional-column-width(30)" />
                            <fo:table-column column-width="proportional-column-width(50)" />
                            <fo:table-column column-width="proportional-column-width(20)" />                           
                            <fo:table-body font-size="95%">
                                <fo:table-row
                                    height="8mm"
                                    border-color="white"
                                    border-width="0.35mm"
                                    border-style="solid"
                                    text-align="right"
                                    display-align="center"
                                    space-after="5mm"
                                >
                                    <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                        <xsl:if test="(Name = 'Neptune')">
                                            <fo:table-cell>
                                                <fo:block>
                                                    Name - <xsl:value-of select="Name"/>
                                                    <fo:block/>                                                    
                                                    Mass - <xsl:value-of select="Mass"/>
                                                    <fo:block/>
                                                    Mass unit - <xsl:value-of select="Mass-unit"/>
                                                    <fo:block/>
                                                    Volume - <xsl:value-of select="Volume"/>
                                                    <fo:block/>
                                                    Velocity - <xsl:value-of select="Velocity"/>
                                                    <fo:block/>
                                                    Velocity unit - <xsl:value-of select="Velocity-unit"/>
                                                    <fo:block/>
                                                    Type - <xsl:value-of select="Type"/>
                                                    <fo:block/>                                                                                                                                                  
                                                </fo:block>
                                            </fo:table-cell>
                                        </xsl:if>
                                    </xsl:for-each>
                                    <fo:table-cell text-align="center">
                                        <fo:block>
                                            <fo:external-graphic content-height="150" content-width="50%" scaling="uniform" src="Neptune.png"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                    <fo:table-cell>
                                        <fo:block>                                                    
                                            Natural satellites: <fo:block/>
                                            <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                                <xsl:if test="(Name = 'Neptune')">
                                                    
                                                    <xsl:value-of select="Natural-satellites"/>
                                                    <fo:block/>
                                                    
                                                </xsl:if>
                                            </xsl:for-each>                                                                                                                                                  
                                        </fo:block>
                                    </fo:table-cell>
                                        
                                </fo:table-row>
                                                                                      
                            </fo:table-body>                            
                        </fo:table>
                    </fo:block>
                    <!--
                    <fo:block>
                        <fo:leader leader-length="100%" leader-pattern="rule" 
                                   rule-thickness="0.5pt" color="black"/>
                    </fo:block>
                    -->
                    <fo:block id="end-of-document">
                        
                    </fo:block>
           
       
                </fo:flow> 
            </fo:page-sequence>
        </fo:root>
        
    </xsl:template>
 
</xsl:stylesheet>