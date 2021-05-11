<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <header>
                <link rel="stylesheet" type="text/css" href="solarsystem.css"/>
            </header>            
            <body>                                 
                <div style="background-color: black;" class ="box" height="3686" width="1511" >
                    <!--
                    
                    <div class="popup" id="popup-5">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup5()">&#xd7;</div>
                            <table>
                                <tr>
                                    <th>Age</th>
                                    <th>Age unit</th>
                                    <th>Location</th>                       
                                </tr>
                                <xsl:for-each select="solarSystem" >
                                    <tr>
                                        <td>
                                            <xsl:value-of select="Age"/>
                                        </td>                               
                                        <td>
                                            <xsl:value-of select="Age-unit"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Location"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </div>
                    </div>
                    -->
                    <div class="popup" id="popup-5">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup5()">&#xd7;</div>
                            <table>
                                <xsl:for-each select="solarSystem" >
                                    <tr>
                                        <th style="font-size:30px">Age &#160; :</th>
                                        <td>
                                            <xsl:value-of select="Age"/>
                                        </td> 
                                    </tr>
                                    <tr>
                                        <th style="font-size:30px">Age unit</th>
                                        <td>
                                            <xsl:value-of select="Age-unit"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="font-size:30px">Location &#160; :</th>
                                        <td>
                                            <xsl:value-of select="Location"/>
                                        </td>                       
                                    </tr>
                                </xsl:for-each>                               
                            </table>
                        </div>
                    </div>
                    
                    <!-- Inner planets list -->
                    <div class="popup" id="popup-2">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup2()">&#xd7;</div>
                            <table>
                                <tr>
                                    <th colspan="1">Name</th>
                                    <th colspan="1">Mass</th>
                                    <th colspan="1">Mass-unit</th>                                    
                                    <th colspan="1">Volume</th>
                                    <th colspan="1">Velocity</th>
                                    <th colspan="1">Velocity-unit</th>                                  
                                    <th colspan="1">Type</th>                      
                                </tr>
                                <xsl:for-each select="solarSystem/Planets/Inner-planets/Planet" >
                                    
                                    <tr>
                                        <td>
                                            <xsl:value-of select="Name"/>
                                        </td>                               
                                        <td colspan="2">
                                            <xsl:value-of select="Mass"/>
                                            &#160;
                                            <xsl:value-of select="Mass-unit"/>
                                        </td>                                      
                                        <td>
                                            <xsl:value-of select="Volume"/>
                                        </td>
                                        <td colspan = "2">
                                            <xsl:value-of select="Velocity"/>
                                            <xsl:value-of select="Velocity-unit"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Type"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>      
                            </table>
                        </div>
                    </div>
                    
                    <!-- Outer planets list -->
                    <div class="popup" id="popup-4">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup4()">&#xd7;</div>
                            <table>
                                <tr>
                                    <th colspan="1">Name</th>
                                    <th colspan="1">Mass</th>
                                    <th colspan="1">Mass-unit</th>                                    
                                    <th colspan="1">Volume</th>
                                    <th colspan="1">Velocity</th>
                                    <th colspan="1">Velocity-unit</th>                                  
                                    <th colspan="1">Type</th>                      
                                </tr>
                                <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                    
                                    <tr>
                                        <td>
                                            <xsl:value-of select="Name"/>
                                        </td>                               
                                        <td colspan="2">
                                            <xsl:value-of select="Mass"/>
                                            &#160;
                                            <xsl:value-of select="Mass-unit"/>
                                        </td>                                      
                                        <td>
                                            <xsl:value-of select="Volume"/>
                                        </td>
                                        <td colspan="2">
                                            <xsl:value-of select="Velocity"/>
                                            <xsl:value-of select="Velocity-unit"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Type"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>      
                            </table>
                        </div>
                    </div>
                    
                    <!-- Star object -->
                    <div class="popup" id="popup-1">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup1()">&#xd7;</div>                           
                            <table>
                                <tr>
                                    <th>Name</th>
                                    <th>Mass</th>
                                    <th>Mass-unit</th>
                                    <th>Volume</th>
                                    <th>Age</th>
                                    <th>Velocity</th>
                                    <th>Velocity-unit</th>                     
                                </tr>
                                <xsl:for-each select="solarSystem/Stars/Star" >
                                    <tr>
                                        <td>
                                            <xsl:value-of select="Name"/>
                                        </td>                               
                                        <td colspan="2">
                                            <xsl:value-of select="Mass"/>
                                            &#160;
                                            <xsl:value-of select="Mass-unit"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Volume"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Age"/>
                                        </td>
                                        <td colspan="2">
                                            <xsl:value-of select="Velocity"/>
                                            <xsl:value-of select="Velocity-unit"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                            
                        </div>   
                    </div>
                    
                    <!-- Mercury planet -->
                    <div class="popup" id="popup-3">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup3()">&#xd7;</div>                       
                            <table>
                                <tr>
                                    <th colspan="1">Name</th>
                                    <th colspan="1">Mass</th>
                                    <th colspan="1">Mass-unit</th>                                    
                                    <th colspan="1">Volume</th>
                                    <th colspan="1">Velocity</th>
                                    <th colspan="1">Velocity-unit</th>                                  
                                    <th colspan="1">Type</th>                      
                                </tr>
                                <xsl:for-each select="solarSystem/Planets/Inner-planets/Planet" >
                                    <xsl:if test="(Name = 'Mercury')">                                   
                                        <tr>
                                            <td>
                                                <xsl:value-of select="Name"/>
                                            </td>                               
                                            <td colspan="2">
                                                <xsl:value-of select="Mass"/>
                                            &#160;
                                                <xsl:value-of select="Mass-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Volume"/>
                                            </td>
                                            <td colspan="2">
                                                <xsl:value-of select="Velocity"/>
                                                <xsl:value-of select="Velocity-unit"/>
                                            </td>                                     
                                            <td>
                                                <xsl:value-of select="Type"/>
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:for-each>      
                            </table>
                        </div>
                    </div>
                    
                    <!-- Venus planet -->
                    <div class="popup" id="popup-6">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup6()">&#xd7;</div>
                            <table>
                                <tr>
                                    <th colspan="1">Name</th>
                                    <th colspan="1">Mass</th>
                                    <th colspan="1">Mass-unit</th>                                    
                                    <th colspan="1">Volume</th>
                                    <th colspan="1">Velocity</th>
                                    <th colspan="1">Velocity-unit</th>                                  
                                    <th colspan="1">Type</th>                      
                                </tr>
                                <xsl:for-each select="solarSystem/Planets/Inner-planets/Planet" >
                                    <xsl:if test="(Name = 'Venus')">                                   
                                        <tr>
                                            <td>
                                                <xsl:value-of select="Name"/>
                                            </td>                               
                                            <td colspan="2">
                                                <xsl:value-of select="Mass"/>
                                            &#160;
                                                <xsl:value-of select="Mass-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Volume"/>
                                            </td>
                                            <td colspan="2">
                                                <xsl:value-of select="Velocity"/>
                                                <xsl:value-of select="Velocity-unit"/>
                                            </td>
                                       
                                            <td>
                                                <xsl:value-of select="Type"/>
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:for-each>      
                            </table>
                        </div>
                    </div>
                    
                    <!-- Earth planet -->
                    <div class="popup" id="popup-7">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup7()">&#xd7;</div>
                            <table>
                                <tr>
                                    <th colspan="1">Name</th>
                                    <th colspan="1">Mass</th>
                                    <th colspan="1">Mass-unit</th>                                    
                                    <th colspan="1">Volume</th>
                                    <th colspan="1">Velocity</th>
                                    <th colspan="1">Velocity-unit</th>                                  
                                    <th colspan="1">Type</th>                       
                                </tr>
                                <xsl:for-each select="solarSystem/Planets/Inner-planets/Planet" >
                                    <xsl:if test="(Name = 'Earth')">                                   
                                        <tr>
                                            <td>
                                                <xsl:value-of select="Name"/>
                                            </td>                               
                                            <td colspan="2">
                                                <xsl:value-of select="Mass"/>
                                            &#160;
                                                <xsl:value-of select="Mass-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Volume"/>
                                            </td>
                                            <td colspan="2">
                                                <xsl:value-of select="Velocity"/>
                                                <xsl:value-of select="Velocity-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Type"/>
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:for-each>      
                            </table>
                        </div>
                    </div>
                    
                    <!-- Mars planet -->
                    <div class="popup" id="popup-8">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup8()">&#xd7;</div>
                            <table>
                                <tr>
                                    <th colspan="1">Name</th>
                                    <th colspan="1">Mass</th>
                                    <th colspan="1">Mass-unit</th>                                    
                                    <th colspan="1">Volume</th>
                                    <th colspan="1">Velocity</th>
                                    <th colspan="1">Velocity-unit</th>                                  
                                    <th colspan="1">Type</th>                       
                                </tr>
                                <xsl:for-each select="solarSystem/Planets/Inner-planets/Planet" >
                                    <xsl:if test="(Name = 'Mars')">                                   
                                        <tr>
                                            <td>
                                                <xsl:value-of select="Name"/>
                                            </td>                               
                                            <td colspan="2">
                                                <xsl:value-of select="Mass"/>
                                            &#160;
                                                <xsl:value-of select="Mass-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Volume"/>
                                            </td>
                                            <td colspan="2">
                                                <xsl:value-of select="Velocity"/>
                                                <xsl:value-of select="Velocity-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Type"/>
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:for-each>      
                            </table>
                        </div>
                    </div>
                    
                    <!-- Jupiter planet -->
                    <div class="popup" id="popup-9">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup9()">&#xd7;</div>
                            <table>
                                <tr>
                                    <th colspan="1">Name</th>
                                    <th colspan="1">Mass</th>
                                    <th colspan="1">Mass-unit</th>                                    
                                    <th colspan="1">Volume</th>
                                    <th colspan="1">Velocity</th>
                                    <th colspan="1">Velocity-unit</th>                                  
                                    <th colspan="1">Type</th>                       
                                </tr>
                                <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                    <xsl:if test="(Name = 'Jupiter')">                                   
                                        <tr>
                                            <td>
                                                <xsl:value-of select="Name"/>
                                            </td>                               
                                            <td colspan="2">
                                                <xsl:value-of select="Mass"/>
                                            &#160;
                                                <xsl:value-of select="Mass-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Volume"/>
                                            </td>
                                            <td colspan="2">
                                                <xsl:value-of select="Velocity"/>
                                                <xsl:value-of select="Velocity-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Type"/>
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:for-each>      
                            </table>
                        </div>
                    </div>

                    <!-- Saturn planet -->
                    <div class="popup" id="popup-10">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup10()">&#xd7;</div>
                            <table>
                                <tr>
                                    <th colspan="1">Name</th>
                                    <th colspan="1">Mass</th>
                                    <th colspan="1">Mass-unit</th>                                    
                                    <th colspan="1">Volume</th>
                                    <th colspan="1">Velocity</th>
                                    <th colspan="1">Velocity-unit</th>                                  
                                    <th colspan="1">Type</th>                       
                                </tr>
                                <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                    <xsl:if test="(Name = 'Saturn')">                                   
                                        <tr>
                                            <td>
                                                <xsl:value-of select="Name"/>
                                            </td>                               
                                            <td colspan="2">
                                                <xsl:value-of select="Mass"/>
                                            &#160;
                                                <xsl:value-of select="Mass-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Volume"/>
                                            </td>
                                            <td colspan="2">
                                                <xsl:value-of select="Velocity"/>
                                                <xsl:value-of select="Velocity-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Type"/>
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:for-each>      
                            </table>
                        </div>
                    </div>
                    
                    <!-- Urnaus planet -->
                    <div class="popup" id="popup-11">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup11()">&#xd7;</div>
                            <table>
                                <tr>
                                    <th colspan="1">Name</th>
                                    <th colspan="1">Mass</th>
                                    <th colspan="1">Mass-unit</th>                                    
                                    <th colspan="1">Volume</th>
                                    <th colspan="1">Velocity</th>
                                    <th colspan="1">Velocity-unit</th>                                  
                                    <th colspan="1">Type</th>                       
                                </tr>
                                <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                    <xsl:if test="(Name = 'Uranus')">                                   
                                        <tr>
                                            <td>
                                                <xsl:value-of select="Name"/>
                                            </td>                               
                                            <td colspan="2">
                                                <xsl:value-of select="Mass"/>
                                            &#160;
                                                <xsl:value-of select="Mass-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Volume"/>
                                            </td>
                                            <td colspan="2">
                                                <xsl:value-of select="Velocity"/>
                                                <xsl:value-of select="Velocity-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Type"/>
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:for-each>      
                            </table>
                        </div>
                    </div>
                    
                    <!-- Neptune planet -->
                    <div class="popup" id="popup-12">
                        <div class="overlay"></div>
                        <div class="content">
                            <div class="close-btn" onclick="togglePopup12()">&#xd7;</div>
                            <table>
                                <tr>
                                    <th colspan="1">Name</th>
                                    <th colspan="1">Mass</th>
                                    <th colspan="1">Mass unit</th>
                                    <th colspan="1">Volume</th>
                                    <th colspan="1">Velocity</th>
                                    <th colspan="1">Velocity-unit</th>
                                    <th colspan="1">Type</th>                      
                                </tr>
                                <xsl:for-each select="solarSystem/Planets/Outer-planets/Planet" >
                                    <xsl:if test="(Name = 'Neptune')">                                   
                                        <tr>
                                            <td>
                                                <xsl:value-of select="Name"/>
                                            </td>                               
                                            <td colspan="2">
                                                <xsl:value-of select="Mass"/>
                                            &#160;
                                                <xsl:value-of select="Mass-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Volume"/>
                                            </td>
                                            <td colspan="2">
                                                <xsl:value-of select="Velocity"/>
                                                <xsl:value-of select="Velocity-unit"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="Type"/>
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:for-each>      
                            </table>
                        </div>
                    </div>
                    
                    <!-- Mygtukai -->
                    <button class="button" onclick="togglePopup1()">+</button>
                    <button class="button-solarsystem" onclick="togglePopup5()" font-size="40px">Solar System</button>
                    <button class="button-inplanets" onclick="togglePopup2()" font-size="40px">Inner Planets</button>
                    <button class="button-outplanets" onclick="togglePopup4()" font-size="40px">Outer Planets</button>
                    <button class="button-mercury" onclick="togglePopup3()">+</button>
                    <button class="button-venus" onclick="togglePopup6()">+</button>
                    <button class="button-earth" onclick="togglePopup7()">+</button>
                    <button class="button-mars" onclick="togglePopup8()">+</button>
                    <button class="button-jupiter" onclick="togglePopup9()">+</button>
                    <button class="button-saturn" onclick="togglePopup10()">+</button>
                    <button class="button-uranus" onclick="togglePopup11()">+</button>
                    <button class="button-neptune" onclick="togglePopup12()">+</button>
 
                    <!-- JavaScript skriptai -->     
                    <script>
                        function togglePopup1(){
                        document.getElementById("popup-1").classList.toggle("active");
                        }
                        function togglePopup2(){
                        document.getElementById("popup-2").classList.toggle("active");
                        }
                        function togglePopup3(){
                        document.getElementById("popup-3").classList.toggle("active");
                        }
                        function togglePopup4(){
                        document.getElementById("popup-4").classList.toggle("active");
                        }
                        function togglePopup5(){
                        document.getElementById("popup-5").classList.toggle("active");
                        }
                        function togglePopup6(){
                        document.getElementById("popup-6").classList.toggle("active");
                        }
                        function togglePopup7(){
                        document.getElementById("popup-7").classList.toggle("active");
                        }
                        function togglePopup8(){
                        document.getElementById("popup-8").classList.toggle("active");
                        }
                        function togglePopup9(){
                        document.getElementById("popup-9").classList.toggle("active");
                        }
                        function togglePopup10(){
                        document.getElementById("popup-10").classList.toggle("active");
                        } 
                        function togglePopup11(){
                        document.getElementById("popup-11").classList.toggle("active");
                        } 
                        function togglePopup12(){
                        document.getElementById("popup-12").classList.toggle("active");
                        }                                               
                    </script>
                    
                    
                </div>                                                                                                                       
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>
