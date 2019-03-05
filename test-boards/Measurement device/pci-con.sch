<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.3.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-tycoelectronics" urn="urn:adsk.eagle:library:193">
<description>&lt;b&gt;Tyco Electronics Connector&lt;/b&gt;&lt;p&gt;
http://catalog.tycoelectronics.com&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="RJ45-SHIELD2" urn="urn:adsk.eagle:footprint:10653/1" library_version="1">
<description>&lt;b&gt;RJ45 Low Profile&lt;/b&gt; Shield Type 2&lt;p&gt;
For all RJ45 L, LC, LCT and X Series Models&lt;br&gt;
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<wire x1="8.777" y1="-3.151" x2="8.777" y2="-7.147" width="0.2032" layer="51"/>
<wire x1="-8.777" y1="-7.147" x2="-8.777" y2="-3.151" width="0.2032" layer="51"/>
<wire x1="-8.777" y1="10.819" x2="8.777" y2="10.819" width="0.2032" layer="21"/>
<wire x1="9.7155" y1="-8.18" x2="-9.7155" y2="-8.18" width="0.01" layer="20"/>
<wire x1="8.777" y1="-10.322" x2="-8.777" y2="-10.322" width="0.2032" layer="21"/>
<wire x1="-8.777" y1="-10.322" x2="-8.777" y2="-6.961" width="0.2032" layer="21"/>
<wire x1="8.777" y1="-6.961" x2="8.777" y2="-10.322" width="0.2032" layer="21"/>
<wire x1="-8.777" y1="6.823" x2="-8.777" y2="10.819" width="0.2032" layer="51"/>
<wire x1="8.777" y1="10.819" x2="8.777" y2="6.823" width="0.2032" layer="51"/>
<wire x1="-8.777" y1="-3.337" x2="-8.777" y2="7.009" width="0.2032" layer="21"/>
<wire x1="8.777" y1="7.009" x2="8.777" y2="-3.337" width="0.2032" layer="21"/>
<pad name="4" x="-0.635" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="3" x="-1.905" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="2" x="-3.175" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="5" x="0.635" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="1" x="-4.445" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="6" x="1.905" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="S1" x="-8.128" y="-5.33" drill="1.9" diameter="2.5"/>
<pad name="S2" x="8.128" y="-5.33" drill="1.9" diameter="2.5"/>
<pad name="7" x="3.175" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="8" x="4.445" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="S3" x="-8.128" y="8.76" drill="1.9" diameter="2.5"/>
<pad name="S4" x="8.128" y="8.76" drill="1.9" diameter="2.5"/>
<text x="-9.525" y="-0.635" size="1.778" layer="25" rot="R90">&gt;NAME</text>
<text x="-5.715" y="2.54" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="8.85" y1="-8.175" x2="9.775" y2="-7.032" layer="21"/>
<rectangle x1="-9.775" y1="-8.175" x2="-8.85" y2="-7.032" layer="21"/>
<hole x="-5.715" y="0" drill="3.2512"/>
<hole x="5.715" y="0" drill="3.2512"/>
</package>
<package name="RJ45-SHIELD1" urn="urn:adsk.eagle:footprint:10654/1" library_version="1">
<description>&lt;b&gt;RJ45 Low Profile&lt;/b&gt; Shield Type 1&lt;p&gt;
For all RJ45 N and Z Series Models&lt;br&gt;
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<wire x1="7.777" y1="-0.611" x2="7.777" y2="-5.242" width="0.2032" layer="51"/>
<wire x1="-7.777" y1="-5.242" x2="-7.777" y2="-0.611" width="0.2032" layer="51"/>
<wire x1="-7.777" y1="10.819" x2="7.777" y2="10.819" width="0.2032" layer="21"/>
<wire x1="8.4455" y1="-5.5118" x2="-8.4455" y2="-5.5118" width="0.01" layer="20"/>
<wire x1="7.777" y1="-7.782" x2="-7.777" y2="-7.782" width="0.2032" layer="21"/>
<wire x1="-7.777" y1="-7.782" x2="-7.777" y2="-5.056" width="0.2032" layer="21"/>
<wire x1="7.777" y1="-5.056" x2="7.777" y2="-7.782" width="0.2032" layer="21"/>
<wire x1="-7.777" y1="6.823" x2="-7.777" y2="10.819" width="0.2032" layer="51"/>
<wire x1="7.777" y1="10.819" x2="7.777" y2="6.823" width="0.2032" layer="51"/>
<wire x1="-7.777" y1="-0.797" x2="-7.777" y2="7.009" width="0.2032" layer="21"/>
<wire x1="7.777" y1="7.009" x2="7.777" y2="-0.797" width="0.2032" layer="21"/>
<pad name="4" x="-0.635" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="3" x="-1.905" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="2" x="-3.175" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="5" x="0.635" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="1" x="-4.445" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="6" x="1.905" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="S1" x="-8.128" y="-3.048" drill="1.9" diameter="2.5"/>
<pad name="S2" x="8.128" y="-3.048" drill="1.9" diameter="2.5"/>
<pad name="7" x="3.175" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="8" x="4.445" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="S3" x="-8.128" y="8.76" drill="1.9" diameter="2.5"/>
<pad name="S4" x="8.128" y="8.76" drill="1.9" diameter="2.5"/>
<text x="-9.525" y="-0.635" size="1.778" layer="25" rot="R90">&gt;NAME</text>
<text x="-5.715" y="2.54" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="7.85" y1="-5.485" x2="8.775" y2="-4.342" layer="51"/>
<rectangle x1="-8.775" y1="-5.485" x2="-7.85" y2="-4.342" layer="51"/>
<hole x="-5.715" y="0" drill="3.2512"/>
<hole x="5.715" y="0" drill="3.2512"/>
</package>
</packages>
<packages3d>
<package3d name="RJ45-SHIELD2" urn="urn:adsk.eagle:package:10664/1" type="box" library_version="1">
<description>RJ45 Low Profile Shield Type 2
For all RJ45 L, LC, LCT and X Series Models
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<packageinstances>
<packageinstance name="RJ45-SHIELD2"/>
</packageinstances>
</package3d>
<package3d name="RJ45-SHIELD1" urn="urn:adsk.eagle:package:10663/1" type="box" library_version="1">
<description>RJ45 Low Profile Shield Type 1
For all RJ45 N and Z Series Models
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<packageinstances>
<packageinstance name="RJ45-SHIELD1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="JACK8SHILED4" urn="urn:adsk.eagle:symbol:10652/1" library_version="1">
<wire x1="-5.461" y1="-10.16" x2="-4.826" y2="-10.16" width="0.127" layer="94"/>
<wire x1="-4.064" y1="-10.16" x2="-3.556" y2="-10.16" width="0.127" layer="94"/>
<wire x1="-2.794" y1="-10.16" x2="-2.286" y2="-10.16" width="0.127" layer="94"/>
<wire x1="4.318" y1="-10.16" x2="4.572" y2="-10.16" width="0.127" layer="94"/>
<wire x1="4.572" y1="-10.16" x2="4.572" y2="-9.652" width="0.127" layer="94"/>
<wire x1="4.572" y1="9.906" x2="4.572" y2="10.414" width="0.127" layer="94"/>
<wire x1="4.572" y1="10.922" x2="4.572" y2="11.43" width="0.127" layer="94"/>
<wire x1="-4.826" y1="11.43" x2="-5.461" y2="11.43" width="0.127" layer="94"/>
<wire x1="-5.461" y1="11.43" x2="-5.461" y2="10.668" width="0.127" layer="94"/>
<wire x1="-5.461" y1="9.652" x2="-5.461" y2="8.128" width="0.127" layer="94"/>
<wire x1="-5.461" y1="7.112" x2="-5.461" y2="5.588" width="0.127" layer="94"/>
<wire x1="-5.461" y1="4.572" x2="-5.461" y2="3.048" width="0.127" layer="94"/>
<wire x1="-5.461" y1="2.032" x2="-5.461" y2="0.508" width="0.127" layer="94"/>
<wire x1="-5.461" y1="-0.508" x2="-5.461" y2="-2.032" width="0.127" layer="94"/>
<wire x1="-5.461" y1="-8.128" x2="-5.461" y2="-10.16" width="0.127" layer="94"/>
<wire x1="4.572" y1="8.636" x2="4.572" y2="9.144" width="0.127" layer="94"/>
<wire x1="4.572" y1="7.366" x2="4.572" y2="7.874" width="0.127" layer="94"/>
<wire x1="4.572" y1="6.096" x2="4.572" y2="6.604" width="0.127" layer="94"/>
<wire x1="4.572" y1="4.826" x2="4.572" y2="5.334" width="0.127" layer="94"/>
<wire x1="4.572" y1="3.556" x2="4.572" y2="4.064" width="0.127" layer="94"/>
<wire x1="4.572" y1="2.286" x2="4.572" y2="2.794" width="0.127" layer="94"/>
<wire x1="4.572" y1="1.016" x2="4.572" y2="1.524" width="0.127" layer="94"/>
<wire x1="4.572" y1="-0.254" x2="4.572" y2="0.254" width="0.127" layer="94"/>
<wire x1="4.572" y1="-1.524" x2="4.572" y2="-1.016" width="0.127" layer="94"/>
<wire x1="-1.016" y1="-10.16" x2="-1.651" y2="-10.16" width="0.127" layer="94"/>
<wire x1="0.254" y1="-10.16" x2="-0.381" y2="-10.16" width="0.127" layer="94"/>
<wire x1="1.524" y1="-10.16" x2="0.889" y2="-10.16" width="0.127" layer="94"/>
<wire x1="2.794" y1="-10.16" x2="2.159" y2="-10.16" width="0.127" layer="94"/>
<wire x1="4.064" y1="-10.16" x2="3.429" y2="-10.16" width="0.127" layer="94"/>
<wire x1="-3.556" y1="11.43" x2="-4.191" y2="11.43" width="0.127" layer="94"/>
<wire x1="-2.286" y1="11.43" x2="-2.921" y2="11.43" width="0.127" layer="94"/>
<wire x1="-1.016" y1="11.43" x2="-1.651" y2="11.43" width="0.127" layer="94"/>
<wire x1="0.254" y1="11.43" x2="-0.381" y2="11.43" width="0.127" layer="94"/>
<wire x1="1.524" y1="11.43" x2="0.889" y2="11.43" width="0.127" layer="94"/>
<wire x1="2.794" y1="11.43" x2="2.159" y2="11.43" width="0.127" layer="94"/>
<wire x1="3.556" y1="11.43" x2="4.191" y2="11.43" width="0.127" layer="94"/>
<wire x1="-3.556" y1="10.668" x2="-5.08" y2="10.668" width="0.254" layer="94"/>
<wire x1="-5.08" y1="10.668" x2="-5.08" y2="9.652" width="0.254" layer="94"/>
<wire x1="-5.08" y1="9.652" x2="-3.556" y2="9.652" width="0.254" layer="94"/>
<wire x1="-3.556" y1="8.128" x2="-5.08" y2="8.128" width="0.254" layer="94"/>
<wire x1="-5.08" y1="8.128" x2="-5.08" y2="7.112" width="0.254" layer="94"/>
<wire x1="-5.08" y1="7.112" x2="-3.556" y2="7.112" width="0.254" layer="94"/>
<wire x1="-3.556" y1="5.588" x2="-5.08" y2="5.588" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.588" x2="-5.08" y2="4.572" width="0.254" layer="94"/>
<wire x1="-5.08" y1="4.572" x2="-3.556" y2="4.572" width="0.254" layer="94"/>
<wire x1="-3.556" y1="3.048" x2="-5.08" y2="3.048" width="0.254" layer="94"/>
<wire x1="-5.08" y1="3.048" x2="-5.08" y2="2.032" width="0.254" layer="94"/>
<wire x1="-5.08" y1="2.032" x2="-3.556" y2="2.032" width="0.254" layer="94"/>
<wire x1="-3.556" y1="0.508" x2="-5.08" y2="0.508" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-0.508" x2="-3.556" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-3.556" y1="-2.032" x2="-5.08" y2="-2.032" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-2.032" x2="-5.08" y2="-3.048" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-3.048" x2="-3.556" y2="-3.048" width="0.254" layer="94"/>
<wire x1="-1.651" y1="-1.524" x2="0.889" y2="-1.524" width="0.1998" layer="94"/>
<wire x1="0.889" y1="-1.524" x2="0.889" y2="0.254" width="0.1998" layer="94"/>
<wire x1="0.889" y1="0.254" x2="1.905" y2="0.254" width="0.1998" layer="94"/>
<wire x1="1.905" y1="0.254" x2="1.905" y2="2.286" width="0.1998" layer="94"/>
<wire x1="1.905" y1="2.286" x2="0.889" y2="2.286" width="0.1998" layer="94"/>
<wire x1="0.889" y1="2.286" x2="0.889" y2="4.064" width="0.1998" layer="94"/>
<wire x1="0.889" y1="4.064" x2="-1.651" y2="4.064" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="4.064" x2="-1.651" y2="3.048" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="3.048" x2="-1.651" y2="2.54" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="2.54" x2="-1.651" y2="2.032" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="2.032" x2="-1.651" y2="1.524" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="1.524" x2="-1.651" y2="1.016" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="1.016" x2="-1.651" y2="0.508" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="0.508" x2="-1.651" y2="0" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="0" x2="-1.651" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="-0.508" x2="-1.651" y2="-1.524" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="3.048" x2="-0.889" y2="3.048" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="2.54" x2="-0.889" y2="2.54" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="2.032" x2="-0.889" y2="2.032" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="1.524" x2="-0.889" y2="1.524" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="1.016" x2="-0.889" y2="1.016" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="0.508" x2="-0.889" y2="0.508" width="0.1998" layer="94"/>
<wire x1="-3.556" y1="-4.572" x2="-5.08" y2="-4.572" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-4.572" x2="-5.08" y2="-5.588" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.588" x2="-3.556" y2="-5.588" width="0.254" layer="94"/>
<wire x1="-3.556" y1="-7.112" x2="-5.08" y2="-7.112" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.112" x2="-5.08" y2="-8.128" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-8.128" x2="-3.556" y2="-8.128" width="0.254" layer="94"/>
<wire x1="-1.651" y1="0" x2="-0.889" y2="0" width="0.1998" layer="94"/>
<wire x1="-1.651" y1="-0.508" x2="-0.889" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="-5.461" y1="-3.048" x2="-5.461" y2="-4.572" width="0.127" layer="94"/>
<wire x1="-5.461" y1="-5.588" x2="-5.461" y2="-7.112" width="0.127" layer="94"/>
<wire x1="4.572" y1="-2.794" x2="4.572" y2="-2.286" width="0.127" layer="94"/>
<wire x1="4.572" y1="-4.064" x2="4.572" y2="-3.556" width="0.127" layer="94"/>
<wire x1="4.572" y1="-5.334" x2="4.572" y2="-4.826" width="0.127" layer="94"/>
<wire x1="4.572" y1="-6.604" x2="4.572" y2="-6.096" width="0.127" layer="94"/>
<wire x1="4.572" y1="-7.874" x2="4.572" y2="-7.366" width="0.127" layer="94"/>
<wire x1="4.572" y1="-9.144" x2="4.572" y2="-8.636" width="0.127" layer="94"/>
<text x="-5.08" y="11.684" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="-10.16" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="S@2" x="-2.54" y="-12.7" visible="off" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="S@1" x="-5.08" y="-12.7" visible="off" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="S@3" x="0" y="-12.7" visible="off" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="S@4" x="2.54" y="-12.7" visible="off" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="1" x="-7.62" y="10.16" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="-7.62" y="7.62" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="3" x="-7.62" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="5" x="-7.62" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="7" x="-7.62" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="8" x="-7.62" y="-7.62" visible="pad" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RJ45*2" urn="urn:adsk.eagle:component:10671/1" prefix="X" library_version="1">
<description>&lt;b&gt;RJ45 Low Profile&lt;/b&gt; Shield Type 2&lt;p&gt;
For all RJ45 L, LC, LCT and X Series Models&lt;br&gt;
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<gates>
<gate name="G$1" symbol="JACK8SHILED4" x="0" y="0"/>
</gates>
<devices>
<device name="-S" package="RJ45-SHIELD2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="S@1" pad="S1"/>
<connect gate="G$1" pin="S@2" pad="S2"/>
<connect gate="G$1" pin="S@3" pad="S3"/>
<connect gate="G$1" pin="S@4" pad="S4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10664/1"/>
</package3dinstances>
<technologies>
<technology name="-6L">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ45-6L2-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="16R6097" constant="no"/>
</technology>
<technology name="-6LC">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ45-6LC2-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="16R6095" constant="no"/>
</technology>
<technology name="-6LCT">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="-8L">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ45-8L2-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="52K4446" constant="no"/>
</technology>
<technology name="-8LC">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ45-8LC2-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="16R6099" constant="no"/>
</technology>
<technology name="-8LCT">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ45-8LCT2-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="84K0524" constant="no"/>
</technology>
</technologies>
</device>
<device name="-B" package="RJ45-SHIELD2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="S@1" pad="S1"/>
<connect gate="G$1" pin="S@2" pad="S2"/>
<connect gate="G$1" pin="S@3" pad="S3"/>
<connect gate="G$1" pin="S@4" pad="S4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10664/1"/>
</package3dinstances>
<technologies>
<technology name="-6L">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ45-6L2-B" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="16R6096" constant="no"/>
</technology>
<technology name="-6LC">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ45-6LC2-B" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="16R6094" constant="no"/>
</technology>
<technology name="-8L">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ45-8L2-B" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="52K3810" constant="no"/>
</technology>
<technology name="-8LC">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ45-8LC2-B." constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="50F1338" constant="no"/>
</technology>
<technology name="-8LCT">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ45-8LCT2-B" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="91F7263" constant="no"/>
</technology>
</technologies>
</device>
<device name="1-S" package="RJ45-SHIELD1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="S@1" pad="S1"/>
<connect gate="G$1" pin="S@2" pad="S2"/>
<connect gate="G$1" pin="S@3" pad="S3"/>
<connect gate="G$1" pin="S@4" pad="S4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10663/1"/>
</package3dinstances>
<technologies>
<technology name="-6L">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="-6LC">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="-8L">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="-8LC">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="-8LCT">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="1-B" package="RJ45-SHIELD1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="S@1" pad="S1"/>
<connect gate="G$1" pin="S@2" pad="S2"/>
<connect gate="G$1" pin="S@3" pad="S3"/>
<connect gate="G$1" pin="S@4" pad="S4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10663/1"/>
</package3dinstances>
<technologies>
<technology name="-6L">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="-6LC">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="-8L">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="-8LC">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="-8LCT">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-subd" urn="urn:adsk.eagle:library:189">
<description>&lt;b&gt;SUB-D Connectors&lt;/b&gt;&lt;p&gt;
Harting&lt;br&gt;
NorComp&lt;br&gt;
&lt;p&gt;
PREFIX :&lt;br&gt;
H = High density&lt;br&gt;
F = Female&lt;br&gt;
M = Male&lt;p&gt;
NUMBER: Number of pins&lt;p&gt;
SUFFIX :&lt;br&gt;
H = Horizontal&lt;br&gt;
V = Vertical &lt;br&gt;
P = Shield pin on housing&lt;br&gt;
B = No mounting holes&lt;br&gt;
S = Pins individually placeable (Single)&lt;br&gt;
D = Direct mounting &lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="F37D" urn="urn:adsk.eagle:footprint:10195/1" library_version="1">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-27.4066" y1="6.9342" x2="-26.8986" y2="7.4422" width="0.1524" layer="21" curve="-90"/>
<wire x1="26.7716" y1="7.4422" x2="27.2796" y2="6.9342" width="0.1524" layer="21" curve="-90"/>
<wire x1="-27.4066" y1="1.8542" x2="-27.4066" y2="6.9342" width="0.1524" layer="21"/>
<wire x1="-28.0416" y1="1.2192" x2="-27.4066" y2="1.8542" width="0.1524" layer="21" curve="90"/>
<wire x1="27.2796" y1="1.8542" x2="27.2796" y2="6.9342" width="0.1524" layer="21"/>
<wire x1="27.2796" y1="1.8542" x2="27.9146" y2="1.2192" width="0.1524" layer="21" curve="90"/>
<wire x1="-26.8986" y1="7.4422" x2="26.7716" y2="7.4422" width="0.1524" layer="21"/>
<wire x1="-26.8732" y1="0.508" x2="-26.8732" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-26.8732" y1="0.508" x2="-26.7462" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-26.7462" y1="-1.905" x2="-26.1112" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-26.7462" y1="-1.905" x2="-26.7462" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-26.13" y1="-2.54" x2="26.13" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="26.8732" y1="0.508" x2="26.8732" y2="1.016" width="0.1524" layer="21"/>
<wire x1="26.7462" y1="-1.905" x2="26.7462" y2="0.508" width="0.1524" layer="21"/>
<wire x1="26.7462" y1="0.508" x2="26.8732" y2="0.508" width="0.1524" layer="21"/>
<wire x1="26.1112" y1="-2.54" x2="26.7462" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="-32.9184" y1="-2.7432" x2="-31.5468" y2="-4.1148" width="0" layer="48"/>
<wire x1="-31.5468" y1="-4.1148" x2="-30.1752" y2="-2.7432" width="0" layer="48"/>
<wire x1="-30.1752" y1="-2.7432" x2="-28.8036" y2="-4.1148" width="0" layer="48"/>
<wire x1="-28.8036" y1="-4.1148" x2="-27.432" y2="-2.7432" width="0" layer="48"/>
<wire x1="27.432" y1="-2.7432" x2="28.8036" y2="-4.1148" width="0" layer="48"/>
<wire x1="28.8036" y1="-4.1148" x2="30.1752" y2="-2.7432" width="0" layer="48"/>
<wire x1="30.1752" y1="-2.7432" x2="31.5468" y2="-4.1148" width="0" layer="48"/>
<wire x1="31.5468" y1="-4.1148" x2="32.9184" y2="-2.7432" width="0" layer="48"/>
<smd name="1" x="-24.689" y="-6.045" dx="1.7" dy="3.5" layer="1"/>
<smd name="2" x="-21.9458" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="3" x="-19.2022" y="-6.0446" dx="1.7" dy="3.5" layer="1"/>
<smd name="4" x="-16.4594" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="5" x="-13.716" y="-6.045" dx="1.7" dy="3.5" layer="1"/>
<smd name="20" x="-23.3172" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="6" x="-10.9726" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="7" x="-8.2298" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="8" x="-5.4862" y="-6.0446" dx="1.7" dy="3.5" layer="1"/>
<smd name="9" x="-2.7434" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="10" x="0" y="-6.045" dx="1.7" dy="3.5" layer="1"/>
<smd name="11" x="2.7434" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="12" x="5.4862" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="13" x="8.2298" y="-6.0446" dx="1.7" dy="3.5" layer="1"/>
<smd name="14" x="10.9726" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="15" x="13.716" y="-6.045" dx="1.7" dy="3.5" layer="1"/>
<smd name="16" x="16.4594" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="17" x="19.2022" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="18" x="21.9458" y="-6.0446" dx="1.7" dy="3.5" layer="1"/>
<smd name="19" x="24.689" y="-6.045" dx="1.7" dy="3.5" layer="1"/>
<smd name="21" x="-20.574" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="22" x="-17.8308" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="23" x="-15.0876" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="24" x="-12.3444" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="25" x="-9.6012" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="26" x="-6.858" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="27" x="-4.1148" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="28" x="-1.3716" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="29" x="1.3716" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="30" x="4.1148" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="31" x="6.858" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="32" x="9.6012" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="33" x="12.3444" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="34" x="15.0876" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="35" x="17.8308" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="36" x="20.574" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="37" x="23.3172" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<text x="-10.2616" y="-10.16" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.1016" y="-10.16" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-25.0224" y="-2.2786" size="1.27" layer="21" ratio="10">1</text>
<text x="27.8892" y="-2.54" size="1.27" layer="48">Board</text>
<text x="-25.4508" y="4.5974" size="1.27" layer="51" ratio="10">F37D</text>
<text x="23.8874" y="-2.1786" size="1.27" layer="21" ratio="10">19</text>
<text x="-22.1792" y="-0.7966" size="1.27" layer="22" ratio="10" rot="MR0">20</text>
<text x="24.1442" y="-0.6966" size="1.27" layer="22" ratio="10" rot="MR0">37</text>
<text x="-32.9692" y="-2.54" size="1.27" layer="48">Board </text>
<rectangle x1="-19.685" y1="0.8112" x2="19.558" y2="1.3192" layer="21"/>
<rectangle x1="-25.2888" y1="-6.56" x2="-24.0888" y2="-4.06" layer="51"/>
<rectangle x1="-23.9172" y1="-6.56" x2="-22.7172" y2="-4.06" layer="52"/>
<rectangle x1="-21.174" y1="-6.56" x2="-19.974" y2="-4.06" layer="52"/>
<rectangle x1="-18.4308" y1="-6.56" x2="-17.2308" y2="-4.06" layer="52"/>
<rectangle x1="-22.5456" y1="-6.56" x2="-21.3456" y2="-4.06" layer="51"/>
<rectangle x1="-19.8024" y1="-6.56" x2="-18.6024" y2="-4.06" layer="51"/>
<rectangle x1="-17.0592" y1="-6.56" x2="-15.8592" y2="-4.06" layer="51"/>
<rectangle x1="-14.316" y1="-6.56" x2="-13.116" y2="-4.06" layer="51"/>
<rectangle x1="-15.6876" y1="-6.56" x2="-14.4876" y2="-4.06" layer="52"/>
<rectangle x1="-12.9444" y1="-6.56" x2="-11.7444" y2="-4.06" layer="52"/>
<rectangle x1="-10.2012" y1="-6.56" x2="-9.0012" y2="-4.06" layer="52"/>
<rectangle x1="-7.458" y1="-6.56" x2="-6.258" y2="-4.06" layer="52"/>
<rectangle x1="-11.5728" y1="-6.56" x2="-10.3728" y2="-4.06" layer="51"/>
<rectangle x1="-8.8296" y1="-6.56" x2="-7.6296" y2="-4.06" layer="51"/>
<rectangle x1="-6.0864" y1="-6.56" x2="-4.8864" y2="-4.06" layer="51"/>
<rectangle x1="-4.7148" y1="-6.56" x2="-3.5148" y2="-4.06" layer="52"/>
<rectangle x1="-1.9716" y1="-6.56" x2="-0.7716" y2="-4.06" layer="52"/>
<rectangle x1="0.7716" y1="-6.56" x2="1.9716" y2="-4.06" layer="52"/>
<rectangle x1="-3.3432" y1="-6.56" x2="-2.1432" y2="-4.06" layer="51"/>
<rectangle x1="-0.6" y1="-6.56" x2="0.6" y2="-4.06" layer="51"/>
<rectangle x1="2.1432" y1="-6.56" x2="3.3432" y2="-4.06" layer="51"/>
<rectangle x1="4.8864" y1="-6.56" x2="6.0864" y2="-4.06" layer="51"/>
<rectangle x1="3.5148" y1="-6.56" x2="4.7148" y2="-4.06" layer="52"/>
<rectangle x1="6.258" y1="-6.56" x2="7.458" y2="-4.06" layer="52"/>
<rectangle x1="9.0012" y1="-6.56" x2="10.2012" y2="-4.06" layer="52"/>
<rectangle x1="11.7444" y1="-6.56" x2="12.9444" y2="-4.06" layer="52"/>
<rectangle x1="7.6296" y1="-6.56" x2="8.8296" y2="-4.06" layer="51"/>
<rectangle x1="10.3728" y1="-6.56" x2="11.5728" y2="-4.06" layer="51"/>
<rectangle x1="13.116" y1="-6.56" x2="14.316" y2="-4.06" layer="51"/>
<rectangle x1="14.4876" y1="-6.56" x2="15.6876" y2="-4.06" layer="52"/>
<rectangle x1="17.2308" y1="-6.56" x2="18.4308" y2="-4.06" layer="52"/>
<rectangle x1="19.974" y1="-6.56" x2="21.174" y2="-4.06" layer="52"/>
<rectangle x1="15.8592" y1="-6.56" x2="17.0592" y2="-4.06" layer="51"/>
<rectangle x1="18.6024" y1="-6.56" x2="19.8024" y2="-4.06" layer="51"/>
<rectangle x1="21.3456" y1="-6.56" x2="22.5456" y2="-4.06" layer="51"/>
<rectangle x1="24.0888" y1="-6.56" x2="25.2888" y2="-4.06" layer="51"/>
<rectangle x1="22.7172" y1="-6.56" x2="23.9172" y2="-4.06" layer="52"/>
<rectangle x1="-34.8" y1="0.8" x2="34.6" y2="1.3" layer="21"/>
<rectangle x1="-25.7" y1="-4.1" x2="25.7" y2="-2.5" layer="21"/>
</package>
<package name="F37H" urn="urn:adsk.eagle:footprint:10196/1" library_version="1">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-26.924" y1="17.907" x2="-26.67" y2="17.907" width="0.1524" layer="21"/>
<wire x1="-27.432" y1="17.399" x2="-26.924" y2="17.907" width="0.1524" layer="21" curve="-90"/>
<wire x1="26.924" y1="17.907" x2="27.432" y2="17.399" width="0.1524" layer="21" curve="-90"/>
<wire x1="-27.051" y1="11.684" x2="27.051" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="7.62" x2="-29.718" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="7.62" x2="-34.798" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="7.62" x2="-34.798" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="10.668" x2="-34.798" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="11.176" x2="-34.798" y2="11.684" width="0.1524" layer="21"/>
<wire x1="34.798" y1="11.684" x2="34.798" y2="11.176" width="0.1524" layer="21"/>
<wire x1="34.798" y1="11.176" x2="34.798" y2="10.668" width="0.1524" layer="21"/>
<wire x1="34.798" y1="10.668" x2="34.798" y2="7.62" width="0.1524" layer="21"/>
<wire x1="34.798" y1="7.62" x2="34.798" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="11.176" x2="-32.258" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-32.258" y1="11.176" x2="-29.718" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-29.718" y1="10.414" x2="-29.718" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-29.718" y1="10.668" x2="-29.718" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-29.718" y1="10.668" x2="-29.591" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-29.591" y1="8.255" x2="-28.956" y2="7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-29.718" y1="7.62" x2="-28.829" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-28.829" y1="7.62" x2="-28.575" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-29.591" y1="8.255" x2="-29.591" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-28.575" y1="7.62" x2="-28.575" y2="6.858" width="0.1524" layer="21"/>
<wire x1="-28.575" y1="7.62" x2="28.575" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-28.575" y1="6.858" x2="28.575" y2="6.858" width="0.1524" layer="21"/>
<wire x1="28.575" y1="7.62" x2="28.575" y2="6.858" width="0.1524" layer="21"/>
<wire x1="28.575" y1="7.62" x2="28.829" y2="7.62" width="0.1524" layer="21"/>
<wire x1="28.829" y1="7.62" x2="29.718" y2="7.62" width="0.1524" layer="21"/>
<wire x1="32.258" y1="11.176" x2="34.798" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-29.718" y1="11.176" x2="29.718" y2="11.176" width="0.1524" layer="21"/>
<wire x1="29.718" y1="11.176" x2="32.258" y2="11.176" width="0.1524" layer="21"/>
<wire x1="29.718" y1="10.414" x2="29.718" y2="10.668" width="0.1524" layer="21"/>
<wire x1="29.718" y1="10.668" x2="29.718" y2="11.176" width="0.1524" layer="21"/>
<wire x1="29.591" y1="8.255" x2="29.591" y2="10.668" width="0.1524" layer="21"/>
<wire x1="29.591" y1="10.668" x2="29.718" y2="10.668" width="0.1524" layer="21"/>
<wire x1="28.956" y1="7.62" x2="29.591" y2="8.255" width="0.1524" layer="21" curve="90"/>
<wire x1="-34.163" y1="-3.175" x2="-34.798" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="-2.54" x2="-34.798" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-29.337" y1="-3.175" x2="-34.163" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-29.337" y1="-3.175" x2="-28.829" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-28.829" y1="-2.667" x2="-28.829" y2="7.62" width="0.1524" layer="21"/>
<wire x1="28.829" y1="-2.667" x2="28.829" y2="7.62" width="0.1524" layer="21"/>
<wire x1="28.829" y1="-2.667" x2="29.337" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="29.337" y1="-3.175" x2="34.29" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="34.29" y1="-3.175" x2="34.798" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="34.798" y1="-2.667" x2="34.798" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-2.7686" y1="-1.143" x2="-2.7686" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-16.5608" y1="-1.143" x2="-16.5608" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-19.3294" y1="-1.143" x2="-19.3294" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-17.9324" y1="1.397" x2="-17.9324" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-15.1892" y1="1.397" x2="-15.1892" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-1.3716" y1="1.397" x2="-1.3716" y2="2.413" width="0.8128" layer="51"/>
<wire x1="2.7686" y1="-1.143" x2="2.7686" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="6.9088" y1="1.4224" x2="6.9088" y2="2.4384" width="0.8128" layer="51"/>
<wire x1="16.5608" y1="-1.143" x2="16.5608" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="4.1402" y1="1.4224" x2="4.1402" y2="2.4384" width="0.8128" layer="51"/>
<wire x1="5.5118" y1="-1.143" x2="5.5118" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="1.3716" y1="1.397" x2="1.3716" y2="2.413" width="0.8128" layer="51"/>
<wire x1="0" y1="-1.143" x2="0" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-4.1402" y1="1.397" x2="-4.1402" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-5.5118" y1="-1.143" x2="-5.5118" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="29.718" y1="7.62" x2="34.798" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="11.684" x2="-27.051" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-27.432" y1="12.319" x2="-27.432" y2="17.399" width="0.1524" layer="21"/>
<wire x1="-28.067" y1="11.684" x2="-27.432" y2="12.319" width="0.1524" layer="21" curve="90"/>
<wire x1="27.051" y1="11.684" x2="34.798" y2="11.684" width="0.1524" layer="21"/>
<wire x1="27.432" y1="12.319" x2="27.432" y2="17.399" width="0.1524" layer="21"/>
<wire x1="27.432" y1="12.319" x2="28.067" y2="11.684" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.701" y1="1.397" x2="-20.701" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-23.4696" y1="1.397" x2="-23.4696" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-22.0726" y1="-1.143" x2="-22.0726" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-24.8412" y1="-1.143" x2="-24.8412" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="17.9578" y1="1.397" x2="17.9578" y2="2.413" width="0.8128" layer="51"/>
<wire x1="19.3294" y1="-1.143" x2="19.3294" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="22.098" y1="-1.143" x2="22.098" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="24.8412" y1="-1.143" x2="24.8412" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="20.701" y1="1.397" x2="20.701" y2="2.413" width="0.8128" layer="51"/>
<wire x1="23.4442" y1="1.397" x2="23.4442" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-13.7922" y1="-1.143" x2="-13.7922" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-11.049" y1="-1.143" x2="-11.049" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-8.2804" y1="-1.143" x2="-8.2804" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-12.4206" y1="1.397" x2="-12.4206" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-9.652" y1="1.397" x2="-9.652" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-6.9088" y1="1.397" x2="-6.9088" y2="2.413" width="0.8128" layer="51"/>
<wire x1="8.2804" y1="-1.143" x2="8.2804" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="11.049" y1="-1.143" x2="11.049" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="9.6774" y1="1.397" x2="9.6774" y2="2.413" width="0.8128" layer="51"/>
<wire x1="13.8176" y1="-1.143" x2="13.8176" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="12.4206" y1="1.397" x2="12.4206" y2="2.413" width="0.8128" layer="51"/>
<wire x1="15.1892" y1="1.397" x2="15.1892" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-26.67" y1="17.907" x2="26.67" y2="17.907" width="0.1524" layer="21"/>
<wire x1="26.67" y1="17.907" x2="26.924" y2="17.907" width="0.1524" layer="21"/>
<circle x="-31.75" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="-31.75" y="0" radius="2.667" width="0" layer="42"/>
<circle x="-31.75" y="0" radius="2.667" width="0" layer="43"/>
<circle x="31.75" y="0" radius="2.667" width="0" layer="42"/>
<circle x="31.75" y="0" radius="2.667" width="0" layer="43"/>
<circle x="31.75" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="1" x="-24.8412" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-22.0726" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-19.3294" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-16.5608" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-13.7922" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-11.049" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="-8.2804" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="-5.5118" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="-2.7686" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="2.7686" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="5.5118" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="8.2804" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="20" x="-23.4696" y="1.27" drill="1.016" shape="octagon"/>
<pad name="21" x="-20.701" y="1.27" drill="1.016" shape="octagon"/>
<pad name="22" x="-17.9324" y="1.27" drill="1.016" shape="octagon"/>
<pad name="23" x="-15.1892" y="1.27" drill="1.016" shape="octagon"/>
<pad name="24" x="-12.4206" y="1.27" drill="1.016" shape="octagon"/>
<pad name="25" x="-9.652" y="1.27" drill="1.016" shape="octagon"/>
<pad name="26" x="-6.9088" y="1.27" drill="1.016" shape="octagon"/>
<pad name="27" x="-4.1402" y="1.27" drill="1.016" shape="octagon"/>
<pad name="28" x="-1.3716" y="1.27" drill="1.016" shape="octagon"/>
<pad name="29" x="1.3716" y="1.27" drill="1.016" shape="octagon"/>
<pad name="30" x="4.1402" y="1.27" drill="1.016" shape="octagon"/>
<pad name="31" x="6.9088" y="1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="11.049" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="13.8176" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="16" x="16.5608" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="17" x="19.3294" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="32" x="9.6774" y="1.27" drill="1.016" shape="octagon"/>
<pad name="33" x="12.4206" y="1.27" drill="1.016" shape="octagon"/>
<pad name="34" x="15.1892" y="1.27" drill="1.016" shape="octagon"/>
<pad name="35" x="17.9578" y="1.27" drill="1.016" shape="octagon"/>
<pad name="18" x="22.098" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="19" x="24.8412" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="36" x="20.701" y="1.27" drill="1.016" shape="octagon"/>
<pad name="37" x="23.4696" y="1.27" drill="1.016" shape="octagon"/>
<text x="-34.544" y="-6.35" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-17.78" y="13.97" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-26.924" y="-1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="26.035" y="-1.905" size="1.27" layer="21" ratio="10">19</text>
<text x="-28.067" y="0.635" size="1.27" layer="21" ratio="10">20</text>
<text x="26.035" y="0.635" size="1.27" layer="21" ratio="10">37</text>
<text x="34.29" y="2.54" size="1.27" layer="21" ratio="10" rot="R90">2,54</text>
<text x="-26.924" y="8.509" size="1.27" layer="21" ratio="10">F37</text>
<rectangle x1="-28.575" y1="6.858" x2="28.575" y2="7.62" layer="21"/>
<rectangle x1="-34.798" y1="11.176" x2="34.798" y2="11.684" layer="21"/>
<rectangle x1="-25.2476" y1="-0.381" x2="-24.4348" y2="6.858" layer="21"/>
<rectangle x1="-23.876" y1="2.159" x2="-23.0632" y2="6.858" layer="21"/>
<rectangle x1="-22.479" y1="-0.381" x2="-21.6662" y2="6.858" layer="21"/>
<rectangle x1="-21.1074" y1="2.159" x2="-20.2946" y2="6.858" layer="21"/>
<rectangle x1="-19.7358" y1="-0.381" x2="-18.923" y2="6.858" layer="21"/>
<rectangle x1="-18.3388" y1="2.159" x2="-17.526" y2="6.858" layer="21"/>
<rectangle x1="-16.9672" y1="-0.381" x2="-16.1544" y2="6.858" layer="21"/>
<rectangle x1="-15.5956" y1="2.159" x2="-14.7828" y2="6.858" layer="21"/>
<rectangle x1="-14.1986" y1="-0.381" x2="-13.3858" y2="6.858" layer="21"/>
<rectangle x1="-12.827" y1="2.159" x2="-12.0142" y2="6.858" layer="21"/>
<rectangle x1="-11.4554" y1="-0.381" x2="-10.6426" y2="6.858" layer="21"/>
<rectangle x1="-10.0584" y1="2.159" x2="-9.2456" y2="6.858" layer="21"/>
<rectangle x1="-8.6868" y1="-0.381" x2="-7.874" y2="6.858" layer="21"/>
<rectangle x1="-7.3152" y1="2.159" x2="-6.5024" y2="6.858" layer="21"/>
<rectangle x1="-5.9182" y1="-0.381" x2="-5.1054" y2="6.858" layer="21"/>
<rectangle x1="-4.5466" y1="2.159" x2="-3.7338" y2="6.858" layer="21"/>
<rectangle x1="-3.175" y1="-0.381" x2="-2.3622" y2="6.858" layer="21"/>
<rectangle x1="-1.778" y1="2.159" x2="-0.9652" y2="6.858" layer="21"/>
<rectangle x1="-0.4064" y1="-0.381" x2="0.4064" y2="6.858" layer="21"/>
<rectangle x1="0.9652" y1="2.159" x2="1.778" y2="6.858" layer="21"/>
<rectangle x1="2.3622" y1="-0.381" x2="3.175" y2="6.858" layer="21"/>
<rectangle x1="3.7338" y1="2.159" x2="4.5466" y2="6.858" layer="21"/>
<rectangle x1="5.1054" y1="-0.381" x2="5.9182" y2="6.858" layer="21"/>
<rectangle x1="6.5024" y1="2.159" x2="7.3152" y2="6.858" layer="21"/>
<rectangle x1="7.874" y1="-0.381" x2="8.6868" y2="6.858" layer="21"/>
<rectangle x1="9.271" y1="2.159" x2="10.0838" y2="6.858" layer="21"/>
<rectangle x1="10.6426" y1="-0.381" x2="11.4554" y2="6.858" layer="21"/>
<rectangle x1="12.0142" y1="2.159" x2="12.827" y2="6.858" layer="21"/>
<rectangle x1="13.4112" y1="-0.381" x2="14.224" y2="6.858" layer="21"/>
<rectangle x1="14.7828" y1="2.159" x2="15.5956" y2="6.858" layer="21"/>
<rectangle x1="16.1544" y1="-0.381" x2="16.9672" y2="6.858" layer="21"/>
<rectangle x1="17.5514" y1="2.159" x2="18.3642" y2="6.858" layer="21"/>
<rectangle x1="18.923" y1="-0.381" x2="19.7358" y2="6.858" layer="21"/>
<rectangle x1="20.2946" y1="2.159" x2="21.1074" y2="6.858" layer="21"/>
<rectangle x1="21.6916" y1="-0.381" x2="22.5044" y2="6.858" layer="21"/>
<rectangle x1="23.0378" y1="2.159" x2="23.8506" y2="6.858" layer="21"/>
<rectangle x1="24.4348" y1="-0.381" x2="25.2476" y2="6.858" layer="21"/>
<hole x="-31.75" y="0" drill="3.302"/>
<hole x="31.75" y="0" drill="3.302"/>
</package>
<package name="F37HP" urn="urn:adsk.eagle:footprint:10109/1" library_version="1">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-26.924" y1="17.907" x2="-26.67" y2="17.907" width="0.1524" layer="21"/>
<wire x1="-27.432" y1="17.399" x2="-26.924" y2="17.907" width="0.1524" layer="21" curve="-90"/>
<wire x1="26.924" y1="17.907" x2="27.432" y2="17.399" width="0.1524" layer="21" curve="-90"/>
<wire x1="-27.051" y1="11.684" x2="27.051" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="7.62" x2="-29.718" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="7.62" x2="-34.798" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="7.62" x2="-34.798" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="10.668" x2="-34.798" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="11.176" x2="-34.798" y2="11.684" width="0.1524" layer="21"/>
<wire x1="34.798" y1="11.684" x2="34.798" y2="11.176" width="0.1524" layer="21"/>
<wire x1="34.798" y1="11.176" x2="34.798" y2="10.668" width="0.1524" layer="21"/>
<wire x1="34.798" y1="10.668" x2="34.798" y2="7.62" width="0.1524" layer="21"/>
<wire x1="34.798" y1="7.62" x2="34.798" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="11.176" x2="-32.258" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-32.258" y1="11.176" x2="-29.718" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-29.718" y1="10.668" x2="-29.718" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-29.718" y1="10.668" x2="-29.591" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-29.591" y1="8.255" x2="-28.956" y2="7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-29.718" y1="7.62" x2="-28.829" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-28.829" y1="7.62" x2="-28.575" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-29.591" y1="8.255" x2="-29.591" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-28.575" y1="7.62" x2="-28.575" y2="6.858" width="0.1524" layer="21"/>
<wire x1="-28.575" y1="7.62" x2="28.575" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-28.575" y1="6.858" x2="28.575" y2="6.858" width="0.1524" layer="21"/>
<wire x1="28.575" y1="7.62" x2="28.575" y2="6.858" width="0.1524" layer="21"/>
<wire x1="28.575" y1="7.62" x2="28.829" y2="7.62" width="0.1524" layer="21"/>
<wire x1="28.829" y1="7.62" x2="29.718" y2="7.62" width="0.1524" layer="21"/>
<wire x1="32.258" y1="11.176" x2="34.798" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-29.718" y1="11.176" x2="29.718" y2="11.176" width="0.1524" layer="21"/>
<wire x1="29.718" y1="11.176" x2="32.258" y2="11.176" width="0.1524" layer="21"/>
<wire x1="29.718" y1="10.668" x2="29.718" y2="11.176" width="0.1524" layer="21"/>
<wire x1="29.591" y1="8.255" x2="29.591" y2="10.668" width="0.1524" layer="21"/>
<wire x1="29.591" y1="10.668" x2="29.718" y2="10.668" width="0.1524" layer="21"/>
<wire x1="28.956" y1="7.62" x2="29.591" y2="8.255" width="0.1524" layer="21" curve="90"/>
<wire x1="-34.163" y1="-3.175" x2="-34.798" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="-2.54" x2="-34.798" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-29.337" y1="-3.175" x2="-34.163" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-29.337" y1="-3.175" x2="-28.829" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-28.829" y1="-2.667" x2="-28.829" y2="7.62" width="0.1524" layer="21"/>
<wire x1="28.829" y1="-2.667" x2="28.829" y2="7.62" width="0.1524" layer="21"/>
<wire x1="28.829" y1="-2.667" x2="29.337" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="29.337" y1="-3.175" x2="34.29" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="34.29" y1="-3.175" x2="34.798" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="34.798" y1="-2.667" x2="34.798" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-2.7686" y1="-1.143" x2="-2.7686" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-16.5608" y1="-1.143" x2="-16.5608" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-19.3294" y1="-1.143" x2="-19.3294" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-17.9324" y1="1.397" x2="-17.9324" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-15.1892" y1="1.397" x2="-15.1892" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-1.3716" y1="1.397" x2="-1.3716" y2="2.413" width="0.8128" layer="51"/>
<wire x1="2.7686" y1="-1.143" x2="2.7686" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="6.9088" y1="1.397" x2="6.9088" y2="2.413" width="0.8128" layer="51"/>
<wire x1="16.5608" y1="-1.143" x2="16.5608" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="4.1402" y1="1.397" x2="4.1402" y2="2.413" width="0.8128" layer="51"/>
<wire x1="5.5118" y1="-1.143" x2="5.5118" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="1.3716" y1="1.397" x2="1.3716" y2="2.413" width="0.8128" layer="51"/>
<wire x1="0" y1="-1.143" x2="0" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-4.1402" y1="1.397" x2="-4.1402" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-5.5118" y1="-1.143" x2="-5.5118" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="29.718" y1="7.62" x2="34.798" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="11.684" x2="-27.051" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-27.432" y1="12.319" x2="-27.432" y2="17.399" width="0.1524" layer="21"/>
<wire x1="-28.067" y1="11.684" x2="-27.432" y2="12.319" width="0.1524" layer="21" curve="90"/>
<wire x1="27.051" y1="11.684" x2="34.798" y2="11.684" width="0.1524" layer="21"/>
<wire x1="27.432" y1="12.319" x2="27.432" y2="17.399" width="0.1524" layer="21"/>
<wire x1="27.432" y1="12.319" x2="28.067" y2="11.684" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.701" y1="1.397" x2="-20.701" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-23.4696" y1="1.397" x2="-23.4696" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-22.0726" y1="-1.143" x2="-22.0726" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-24.8412" y1="-1.143" x2="-24.8412" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="17.9578" y1="1.397" x2="17.9578" y2="2.413" width="0.8128" layer="51"/>
<wire x1="19.3294" y1="-1.143" x2="19.3294" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="22.098" y1="-1.143" x2="22.098" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="24.8412" y1="-1.143" x2="24.8412" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="20.701" y1="1.397" x2="20.701" y2="2.413" width="0.8128" layer="51"/>
<wire x1="23.4696" y1="1.397" x2="23.4696" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-13.7922" y1="-1.143" x2="-13.7922" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-11.049" y1="-1.143" x2="-11.049" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-8.2804" y1="-1.143" x2="-8.2804" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-12.4206" y1="1.397" x2="-12.4206" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-9.652" y1="1.397" x2="-9.652" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-6.9088" y1="1.397" x2="-6.9088" y2="2.413" width="0.8128" layer="51"/>
<wire x1="8.2804" y1="-1.143" x2="8.2804" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="11.049" y1="-1.143" x2="11.049" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="9.652" y1="1.397" x2="9.652" y2="2.413" width="0.8128" layer="51"/>
<wire x1="13.8176" y1="-1.143" x2="13.8176" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="12.4206" y1="1.397" x2="12.4206" y2="2.413" width="0.8128" layer="51"/>
<wire x1="15.1892" y1="1.397" x2="15.1892" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-26.67" y1="17.907" x2="26.67" y2="17.907" width="0.1524" layer="21"/>
<wire x1="26.67" y1="17.907" x2="26.924" y2="17.907" width="0.1524" layer="21"/>
<circle x="-31.75" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="31.75" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="1" x="-24.8412" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-22.0726" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-19.3294" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-16.5608" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-13.7922" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-11.049" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="-8.2804" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="-5.5118" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="-2.7686" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="2.7686" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="5.5118" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="8.2804" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="20" x="-23.4696" y="1.27" drill="1.016" shape="octagon"/>
<pad name="21" x="-20.701" y="1.27" drill="1.016" shape="octagon"/>
<pad name="22" x="-17.9324" y="1.27" drill="1.016" shape="octagon"/>
<pad name="23" x="-15.1892" y="1.27" drill="1.016" shape="octagon"/>
<pad name="24" x="-12.4206" y="1.27" drill="1.016" shape="octagon"/>
<pad name="25" x="-9.652" y="1.27" drill="1.016" shape="octagon"/>
<pad name="26" x="-6.9088" y="1.27" drill="1.016" shape="octagon"/>
<pad name="27" x="-4.1402" y="1.27" drill="1.016" shape="octagon"/>
<pad name="28" x="-1.3716" y="1.27" drill="1.016" shape="octagon"/>
<pad name="29" x="1.3716" y="1.27" drill="1.016" shape="octagon"/>
<pad name="30" x="4.1402" y="1.27" drill="1.016" shape="octagon"/>
<pad name="31" x="6.9088" y="1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="11.049" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="13.8176" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="16" x="16.5608" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="17" x="19.3294" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="32" x="9.6774" y="1.27" drill="1.016" shape="octagon"/>
<pad name="33" x="12.4206" y="1.27" drill="1.016" shape="octagon"/>
<pad name="34" x="15.1892" y="1.27" drill="1.016" shape="octagon"/>
<pad name="35" x="17.9578" y="1.27" drill="1.016" shape="octagon"/>
<pad name="18" x="22.098" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="19" x="24.8412" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="36" x="20.701" y="1.27" drill="1.016" shape="octagon"/>
<pad name="37" x="23.4696" y="1.27" drill="1.016" shape="octagon"/>
<pad name="G1" x="-31.75" y="0" drill="3.302" diameter="5.08"/>
<pad name="G2" x="31.75" y="0" drill="3.302" diameter="5.08"/>
<text x="-34.544" y="-6.35" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-17.78" y="13.97" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-26.924" y="-1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="26.035" y="-1.905" size="1.27" layer="21" ratio="10">19</text>
<text x="-28.067" y="0.635" size="1.27" layer="21" ratio="10">20</text>
<text x="26.035" y="0.635" size="1.27" layer="21" ratio="10">37</text>
<text x="34.29" y="2.54" size="1.27" layer="21" ratio="10" rot="R90">2,54</text>
<text x="-26.924" y="8.509" size="1.27" layer="21" ratio="10">F37</text>
<rectangle x1="-28.575" y1="6.858" x2="28.575" y2="7.62" layer="21"/>
<rectangle x1="-34.798" y1="11.176" x2="34.798" y2="11.684" layer="21"/>
<rectangle x1="-25.2476" y1="-0.381" x2="-24.4348" y2="6.858" layer="21"/>
<rectangle x1="-23.876" y1="2.159" x2="-23.0632" y2="6.858" layer="21"/>
<rectangle x1="-22.479" y1="-0.381" x2="-21.6662" y2="6.858" layer="21"/>
<rectangle x1="-21.1074" y1="2.159" x2="-20.2946" y2="6.858" layer="21"/>
<rectangle x1="-19.7358" y1="-0.381" x2="-18.923" y2="6.858" layer="21"/>
<rectangle x1="-18.3388" y1="2.159" x2="-17.526" y2="6.858" layer="21"/>
<rectangle x1="-16.9672" y1="-0.381" x2="-16.1544" y2="6.858" layer="21"/>
<rectangle x1="-15.5956" y1="2.159" x2="-14.7828" y2="6.858" layer="21"/>
<rectangle x1="-14.1986" y1="-0.381" x2="-13.3858" y2="6.858" layer="21"/>
<rectangle x1="-12.827" y1="2.159" x2="-12.0142" y2="6.858" layer="21"/>
<rectangle x1="-11.4554" y1="-0.381" x2="-10.6426" y2="6.858" layer="21"/>
<rectangle x1="-10.0584" y1="2.159" x2="-9.2456" y2="6.858" layer="21"/>
<rectangle x1="-8.6868" y1="-0.381" x2="-7.874" y2="6.858" layer="21"/>
<rectangle x1="-7.3152" y1="2.159" x2="-6.5024" y2="6.858" layer="21"/>
<rectangle x1="-5.9182" y1="-0.381" x2="-5.1054" y2="6.858" layer="21"/>
<rectangle x1="-4.5466" y1="2.159" x2="-3.7338" y2="6.858" layer="21"/>
<rectangle x1="-3.1496" y1="-0.381" x2="-2.3368" y2="6.858" layer="21"/>
<rectangle x1="-1.778" y1="2.159" x2="-0.9652" y2="6.858" layer="21"/>
<rectangle x1="-0.4064" y1="-0.381" x2="0.4064" y2="6.858" layer="21"/>
<rectangle x1="0.9652" y1="2.159" x2="1.778" y2="6.858" layer="21"/>
<rectangle x1="2.3622" y1="-0.381" x2="3.175" y2="6.858" layer="21"/>
<rectangle x1="3.7338" y1="2.159" x2="4.5466" y2="6.858" layer="21"/>
<rectangle x1="5.1054" y1="-0.381" x2="5.9182" y2="6.858" layer="21"/>
<rectangle x1="6.5024" y1="2.159" x2="7.3152" y2="6.858" layer="21"/>
<rectangle x1="7.874" y1="-0.381" x2="8.6868" y2="6.858" layer="21"/>
<rectangle x1="9.2456" y1="2.159" x2="10.0584" y2="6.858" layer="21"/>
<rectangle x1="10.6426" y1="-0.381" x2="11.4554" y2="6.858" layer="21"/>
<rectangle x1="12.0142" y1="2.159" x2="12.827" y2="6.858" layer="21"/>
<rectangle x1="13.4112" y1="-0.381" x2="14.224" y2="6.858" layer="21"/>
<rectangle x1="14.7828" y1="2.159" x2="15.5956" y2="6.858" layer="21"/>
<rectangle x1="16.1544" y1="-0.381" x2="16.9672" y2="6.858" layer="21"/>
<rectangle x1="17.5514" y1="2.159" x2="18.3642" y2="6.858" layer="21"/>
<rectangle x1="18.9484" y1="-0.381" x2="19.7612" y2="6.858" layer="21"/>
<rectangle x1="20.2946" y1="2.159" x2="21.1074" y2="6.858" layer="21"/>
<rectangle x1="21.6662" y1="-0.381" x2="22.479" y2="6.858" layer="21"/>
<rectangle x1="23.0632" y1="2.159" x2="23.876" y2="6.858" layer="21"/>
<rectangle x1="24.4348" y1="-0.381" x2="25.2476" y2="6.858" layer="21"/>
</package>
<package name="F37V" urn="urn:adsk.eagle:footprint:10197/1" library_version="1">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-26.8224" y1="-2.9464" x2="-27.6098" y2="2.3368" width="0.1524" layer="21"/>
<wire x1="25.527" y1="-3.937" x2="26.8357" y2="-2.905" width="0.1524" layer="21" curve="76.489196"/>
<wire x1="26.289" y1="3.937" x2="27.6045" y2="2.3038" width="0.1524" layer="21" curve="-102.298925"/>
<wire x1="27.6098" y1="2.3114" x2="26.8224" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-26.289" y1="3.937" x2="26.289" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-27.6091" y1="2.3268" x2="-26.289" y2="3.937" width="0.1524" layer="21" curve="-101.30773"/>
<wire x1="-26.8299" y1="-2.9295" x2="-25.527" y2="-3.937" width="0.1524" layer="21" curve="75.428151"/>
<wire x1="-25.527" y1="-3.937" x2="25.527" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="-6.223" x2="-32.004" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="-6.223" x2="-29.464" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="-6.096" x2="-29.464" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="-6.096" x2="-29.464" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="-6.223" x2="29.464" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-34.163" y1="-6.223" x2="-32.004" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="-5.588" x2="-34.163" y2="-6.223" width="0.1524" layer="21" curve="90"/>
<wire x1="34.163" y1="-6.223" x2="34.798" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="34.163" y1="6.223" x2="32.004" y2="6.223" width="0.1524" layer="21"/>
<wire x1="34.798" y1="5.588" x2="34.798" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="34.163" y1="6.223" x2="34.798" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-34.798" y1="5.588" x2="-34.798" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="5.588" x2="-34.163" y2="6.223" width="0.1524" layer="21" curve="-90"/>
<wire x1="29.464" y1="-6.223" x2="29.464" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="29.464" y1="-6.223" x2="32.004" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="29.464" y1="-6.096" x2="32.004" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="32.004" y1="-6.096" x2="32.004" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="32.004" y1="-6.223" x2="34.163" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="29.464" y1="6.223" x2="29.464" y2="6.096" width="0.1524" layer="21"/>
<wire x1="29.464" y1="6.223" x2="-29.464" y2="6.223" width="0.1524" layer="21"/>
<wire x1="29.464" y1="6.096" x2="32.004" y2="6.096" width="0.1524" layer="21"/>
<wire x1="32.004" y1="6.096" x2="32.004" y2="6.223" width="0.1524" layer="21"/>
<wire x1="32.004" y1="6.223" x2="29.464" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="6.223" x2="-32.004" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="6.223" x2="-34.163" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="6.096" x2="-29.464" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="6.096" x2="-29.464" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="6.223" x2="-32.004" y2="6.223" width="0.1524" layer="21"/>
<circle x="31.75" y="0" radius="2.667" width="0" layer="42"/>
<circle x="31.75" y="0" radius="2.667" width="0" layer="43"/>
<circle x="-31.75" y="0" radius="2.667" width="0" layer="42"/>
<circle x="-31.75" y="0" radius="2.667" width="0" layer="43"/>
<circle x="1.3716" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="0" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-1.3716" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-31.75" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="31.75" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="2.7686" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-2.7686" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="4.1402" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-4.1402" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="5.5118" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="8.2804" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="6.9088" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="9.652" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="11.049" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="12.4206" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="13.7922" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="15.1892" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="16.5608" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-5.5118" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-8.2804" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-11.049" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-6.9088" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-9.652" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-12.4206" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-13.7922" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-16.5608" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-15.1892" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="19.3294" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="22.0726" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="24.8412" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="17.9324" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="20.701" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="23.4696" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-19.3294" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-22.0726" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-24.8412" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-17.9324" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-20.701" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-23.4696" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<pad name="1" x="24.8412" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="2" x="22.0726" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="3" x="19.3294" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="4" x="16.5608" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="5" x="13.7922" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="6" x="11.049" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="7" x="8.2804" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="8" x="5.5118" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="9" x="2.7686" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="10" x="0" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="11" x="-2.7686" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="12" x="-5.5118" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="13" x="-8.2804" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="20" x="23.4696" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="21" x="20.701" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="22" x="17.9324" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="23" x="15.1892" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="24" x="12.4206" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="25" x="9.652" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="26" x="6.9088" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="27" x="4.1402" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="28" x="1.3716" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="29" x="-1.3716" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="30" x="-4.1402" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="31" x="-6.9088" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="14" x="-11.049" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="15" x="-13.8176" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="16" x="-16.5608" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="17" x="-19.3294" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="32" x="-9.6774" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="33" x="-12.4206" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="34" x="-15.1892" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="35" x="-17.9578" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="18" x="-22.098" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="19" x="-24.8412" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="36" x="-20.701" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="37" x="-23.4696" y="-1.4224" drill="1.016" shape="octagon"/>
<text x="24.5364" y="2.54" size="0.9906" layer="21" ratio="12">1</text>
<text x="21.6154" y="2.54" size="0.9906" layer="21" ratio="12">2</text>
<text x="18.9484" y="2.54" size="0.9906" layer="21" ratio="12">3</text>
<text x="16.1544" y="2.54" size="0.9906" layer="21" ratio="12">4</text>
<text x="13.3604" y="2.54" size="0.9906" layer="21" ratio="12">5</text>
<text x="10.5664" y="2.54" size="0.9906" layer="21" ratio="12">6</text>
<text x="7.8994" y="2.54" size="0.9906" layer="21" ratio="12">7</text>
<text x="5.1054" y="2.54" size="0.9906" layer="21" ratio="12">8</text>
<text x="2.3114" y="2.54" size="0.9906" layer="21" ratio="12">9</text>
<text x="-34.671" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="6.985" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-0.7366" y="2.54" size="0.9906" layer="21" ratio="12">10</text>
<text x="-3.4036" y="2.54" size="0.9906" layer="21" ratio="12">11</text>
<text x="-6.1976" y="2.54" size="0.9906" layer="21" ratio="12">12</text>
<text x="-8.9916" y="2.54" size="0.9906" layer="21" ratio="12">13</text>
<text x="8.7122" y="-3.556" size="0.9906" layer="21" ratio="12">25</text>
<text x="11.5062" y="-3.556" size="0.9906" layer="21" ratio="12">24</text>
<text x="14.4272" y="-3.556" size="0.9906" layer="21" ratio="12">23</text>
<text x="17.2212" y="-3.556" size="0.9906" layer="21" ratio="12">22</text>
<text x="19.8882" y="-3.556" size="0.9906" layer="21" ratio="12">21</text>
<text x="22.5552" y="-3.556" size="0.9906" layer="21" ratio="12">20</text>
<text x="-25.5778" y="2.5654" size="0.9906" layer="21" ratio="12">19</text>
<text x="-22.9108" y="2.5654" size="0.9906" layer="21" ratio="12">18</text>
<text x="-20.2438" y="2.5654" size="0.9906" layer="21" ratio="12">17</text>
<text x="-17.4498" y="2.5654" size="0.9906" layer="21" ratio="12">16</text>
<text x="-14.6558" y="2.5654" size="0.9906" layer="21" ratio="12">15</text>
<text x="-11.8618" y="2.5654" size="0.9906" layer="21" ratio="12">14</text>
<text x="6.096" y="-3.556" size="0.9906" layer="21" ratio="12">26</text>
<text x="3.302" y="-3.556" size="0.9906" layer="21" ratio="12">27</text>
<text x="0.508" y="-3.556" size="0.9906" layer="21" ratio="12">28</text>
<text x="-2.159" y="-3.556" size="0.9906" layer="21" ratio="12">29</text>
<text x="-4.953" y="-3.556" size="0.9906" layer="21" ratio="12">30</text>
<text x="-7.747" y="-3.556" size="0.9906" layer="21" ratio="12">31</text>
<text x="-10.414" y="-3.556" size="0.9906" layer="21" ratio="12">32</text>
<text x="-13.208" y="-3.556" size="0.9906" layer="21" ratio="12">33</text>
<text x="-16.002" y="-3.556" size="0.9906" layer="21" ratio="12">34</text>
<text x="-18.669" y="-3.556" size="0.9906" layer="21" ratio="12">35</text>
<text x="-21.463" y="-3.556" size="0.9906" layer="21" ratio="12">36</text>
<text x="-24.257" y="-3.556" size="0.9906" layer="21" ratio="12">37</text>
<hole x="31.75" y="0" drill="3.302"/>
<hole x="-31.75" y="0" drill="3.302"/>
</package>
<package name="F37VP" urn="urn:adsk.eagle:footprint:10110/1" library_version="1">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-26.8224" y1="-2.9464" x2="-27.6098" y2="2.3368" width="0.1524" layer="21"/>
<wire x1="25.527" y1="-3.937" x2="26.8357" y2="-2.905" width="0.1524" layer="21" curve="76.489196"/>
<wire x1="26.289" y1="3.937" x2="27.6045" y2="2.3038" width="0.1524" layer="21" curve="-102.298925"/>
<wire x1="27.6098" y1="2.3114" x2="26.8224" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-26.289" y1="3.937" x2="26.289" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-27.6091" y1="2.3268" x2="-26.289" y2="3.937" width="0.1524" layer="21" curve="-101.30773"/>
<wire x1="-26.8299" y1="-2.9295" x2="-25.527" y2="-3.937" width="0.1524" layer="21" curve="75.428151"/>
<wire x1="-25.527" y1="-3.937" x2="25.527" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="-6.223" x2="-32.004" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="-6.223" x2="-29.464" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="-6.096" x2="-29.464" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="-6.096" x2="-29.464" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="-6.223" x2="29.464" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-34.163" y1="-6.223" x2="-32.004" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="-5.588" x2="-34.163" y2="-6.223" width="0.1524" layer="21" curve="90"/>
<wire x1="34.163" y1="-6.223" x2="34.798" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="34.163" y1="6.223" x2="32.004" y2="6.223" width="0.1524" layer="21"/>
<wire x1="34.798" y1="5.588" x2="34.798" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="34.163" y1="6.223" x2="34.798" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-34.798" y1="5.588" x2="-34.798" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="5.588" x2="-34.163" y2="6.223" width="0.1524" layer="21" curve="-90"/>
<wire x1="29.464" y1="-6.223" x2="29.464" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="29.464" y1="-6.223" x2="32.004" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="29.464" y1="-6.096" x2="32.004" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="32.004" y1="-6.096" x2="32.004" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="32.004" y1="-6.223" x2="34.163" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="29.464" y1="6.223" x2="29.464" y2="6.096" width="0.1524" layer="21"/>
<wire x1="29.464" y1="6.223" x2="-29.464" y2="6.223" width="0.1524" layer="21"/>
<wire x1="29.464" y1="6.096" x2="32.004" y2="6.096" width="0.1524" layer="21"/>
<wire x1="32.004" y1="6.096" x2="32.004" y2="6.223" width="0.1524" layer="21"/>
<wire x1="32.004" y1="6.223" x2="29.464" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="6.223" x2="-32.004" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="6.223" x2="-34.163" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="6.096" x2="-29.464" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="6.096" x2="-29.464" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="6.223" x2="-32.004" y2="6.223" width="0.1524" layer="21"/>
<circle x="1.3716" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="0" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-1.3716" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-31.75" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="31.75" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="2.7686" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-2.7686" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="4.1402" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-4.1402" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="5.5118" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="8.2804" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="6.9088" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="9.652" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="11.049" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="12.4206" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="13.7922" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="15.1892" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="16.5608" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-5.5118" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-8.2804" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-11.049" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-6.9088" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-9.652" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-12.4206" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-13.7922" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-16.5608" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-15.1892" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="19.3294" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="22.0726" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="24.8412" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="17.9324" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="20.701" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="23.4696" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-19.3294" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-22.0726" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-24.8412" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-17.9324" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-20.701" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-23.4696" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<pad name="1" x="24.8412" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="2" x="22.0726" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="3" x="19.3294" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="4" x="16.5608" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="5" x="13.7922" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="6" x="11.049" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="7" x="8.2804" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="8" x="5.5118" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="9" x="2.7686" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="10" x="0" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="11" x="-2.7686" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="12" x="-5.5118" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="13" x="-8.2804" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="20" x="23.4696" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="21" x="20.701" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="22" x="17.9324" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="23" x="15.1892" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="24" x="12.4206" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="25" x="9.652" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="26" x="6.9088" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="27" x="4.1402" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="28" x="1.3716" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="29" x="-1.3716" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="30" x="-4.1402" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="31" x="-6.9088" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="14" x="-11.049" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="15" x="-13.8176" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="16" x="-16.5608" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="17" x="-19.3294" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="32" x="-9.6774" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="33" x="-12.4206" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="34" x="-15.1892" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="35" x="-17.9578" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="18" x="-22.098" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="19" x="-24.8412" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="36" x="-20.701" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="37" x="-23.4696" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="G1" x="-31.75" y="0" drill="3.302" diameter="5.08"/>
<pad name="G2" x="31.75" y="0" drill="3.302" diameter="5.08"/>
<text x="24.5364" y="2.54" size="0.9906" layer="21" ratio="12">1</text>
<text x="21.6154" y="2.54" size="0.9906" layer="21" ratio="12">2</text>
<text x="18.9484" y="2.54" size="0.9906" layer="21" ratio="12">3</text>
<text x="16.1544" y="2.54" size="0.9906" layer="21" ratio="12">4</text>
<text x="13.3604" y="2.54" size="0.9906" layer="21" ratio="12">5</text>
<text x="10.5664" y="2.54" size="0.9906" layer="21" ratio="12">6</text>
<text x="7.8994" y="2.54" size="0.9906" layer="21" ratio="12">7</text>
<text x="5.1054" y="2.54" size="0.9906" layer="21" ratio="12">8</text>
<text x="2.3114" y="2.54" size="0.9906" layer="21" ratio="12">9</text>
<text x="-34.671" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="6.985" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-0.7366" y="2.54" size="0.9906" layer="21" ratio="12">10</text>
<text x="-3.4036" y="2.54" size="0.9906" layer="21" ratio="12">11</text>
<text x="-6.1976" y="2.54" size="0.9906" layer="21" ratio="12">12</text>
<text x="-8.9916" y="2.54" size="0.9906" layer="21" ratio="12">13</text>
<text x="8.7122" y="-3.556" size="0.9906" layer="21" ratio="12">25</text>
<text x="11.5062" y="-3.556" size="0.9906" layer="21" ratio="12">24</text>
<text x="14.4272" y="-3.556" size="0.9906" layer="21" ratio="12">23</text>
<text x="17.2212" y="-3.556" size="0.9906" layer="21" ratio="12">22</text>
<text x="19.8882" y="-3.556" size="0.9906" layer="21" ratio="12">21</text>
<text x="22.5552" y="-3.556" size="0.9906" layer="21" ratio="12">20</text>
<text x="-25.5778" y="2.5654" size="0.9906" layer="21" ratio="12">19</text>
<text x="-22.9108" y="2.5654" size="0.9906" layer="21" ratio="12">18</text>
<text x="-20.2438" y="2.5654" size="0.9906" layer="21" ratio="12">17</text>
<text x="-17.4498" y="2.5654" size="0.9906" layer="21" ratio="12">16</text>
<text x="-14.6558" y="2.5654" size="0.9906" layer="21" ratio="12">15</text>
<text x="-11.8618" y="2.5654" size="0.9906" layer="21" ratio="12">14</text>
<text x="6.096" y="-3.556" size="0.9906" layer="21" ratio="12">26</text>
<text x="3.302" y="-3.556" size="0.9906" layer="21" ratio="12">27</text>
<text x="0.508" y="-3.556" size="0.9906" layer="21" ratio="12">28</text>
<text x="-2.159" y="-3.556" size="0.9906" layer="21" ratio="12">29</text>
<text x="-4.953" y="-3.556" size="0.9906" layer="21" ratio="12">30</text>
<text x="-7.747" y="-3.556" size="0.9906" layer="21" ratio="12">31</text>
<text x="-10.414" y="-3.556" size="0.9906" layer="21" ratio="12">32</text>
<text x="-13.208" y="-3.556" size="0.9906" layer="21" ratio="12">33</text>
<text x="-16.002" y="-3.556" size="0.9906" layer="21" ratio="12">34</text>
<text x="-18.669" y="-3.556" size="0.9906" layer="21" ratio="12">35</text>
<text x="-21.463" y="-3.556" size="0.9906" layer="21" ratio="12">36</text>
<text x="-24.257" y="-3.556" size="0.9906" layer="21" ratio="12">37</text>
</package>
<package name="F37VB" urn="urn:adsk.eagle:footprint:10198/1" library_version="1">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="26.8224" y1="2.9464" x2="27.6098" y2="-2.3368" width="0.1524" layer="21"/>
<wire x1="-26.8357" y1="2.905" x2="-25.527" y2="3.937" width="0.1524" layer="21" curve="-76.489196"/>
<wire x1="-27.6045" y1="-2.3038" x2="-26.289" y2="-3.937" width="0.1524" layer="21" curve="102.298925"/>
<wire x1="-27.6098" y1="-2.3114" x2="-26.8224" y2="2.921" width="0.1524" layer="21"/>
<wire x1="26.289" y1="-3.937" x2="-26.289" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="26.289" y1="-3.937" x2="27.6091" y2="-2.3268" width="0.1524" layer="21" curve="101.30773"/>
<wire x1="25.527" y1="3.937" x2="26.8299" y2="2.9295" width="0.1524" layer="21" curve="-75.428151"/>
<wire x1="25.527" y1="3.937" x2="-25.527" y2="3.937" width="0.1524" layer="21"/>
<wire x1="32.004" y1="6.223" x2="32.004" y2="6.096" width="0.1524" layer="21"/>
<wire x1="32.004" y1="6.223" x2="29.464" y2="6.223" width="0.1524" layer="21"/>
<wire x1="32.004" y1="6.096" x2="29.464" y2="6.096" width="0.1524" layer="21"/>
<wire x1="29.464" y1="6.096" x2="29.464" y2="6.223" width="0.1524" layer="21"/>
<wire x1="29.464" y1="6.223" x2="-29.464" y2="6.223" width="0.1524" layer="21"/>
<wire x1="34.163" y1="6.223" x2="32.004" y2="6.223" width="0.1524" layer="21"/>
<wire x1="34.163" y1="6.223" x2="34.798" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-34.798" y1="5.588" x2="-34.163" y2="6.223" width="0.1524" layer="21" curve="-90"/>
<wire x1="-34.163" y1="-6.223" x2="-32.004" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="-5.588" x2="-34.798" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-34.798" y1="-5.588" x2="-34.163" y2="-6.223" width="0.1524" layer="21" curve="90"/>
<wire x1="34.798" y1="-5.588" x2="34.798" y2="5.588" width="0.1524" layer="21"/>
<wire x1="34.163" y1="-6.223" x2="34.798" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-29.464" y1="6.223" x2="-29.464" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="6.223" x2="-32.004" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="6.096" x2="-32.004" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="6.096" x2="-32.004" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="6.223" x2="-34.163" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="-6.223" x2="-29.464" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="-6.223" x2="29.464" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-29.464" y1="-6.096" x2="-32.004" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="-6.096" x2="-32.004" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-32.004" y1="-6.223" x2="-29.464" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="32.004" y1="-6.223" x2="32.004" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="32.004" y1="-6.223" x2="34.163" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="32.004" y1="-6.096" x2="29.464" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="29.464" y1="-6.096" x2="29.464" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="29.464" y1="-6.223" x2="32.004" y2="-6.223" width="0.1524" layer="21"/>
<circle x="-1.3716" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="0" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="1.3716" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-2.7686" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="2.7686" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-4.1402" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="4.1402" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-5.5118" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-8.2804" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-6.9088" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-9.652" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-11.049" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-12.4206" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-13.7922" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-15.1892" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-16.5608" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="5.5118" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="8.2804" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="11.049" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="6.9088" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="9.652" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="12.4206" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="13.7922" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="16.5608" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="15.1892" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-19.3294" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-22.0726" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-24.8412" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-17.9324" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-20.701" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-23.4696" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="19.3294" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="22.0726" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="24.8412" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="17.9324" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="20.701" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="23.4696" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<pad name="1" x="-24.8412" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="2" x="-22.0726" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="3" x="-19.3294" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="4" x="-16.5608" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="5" x="-13.7922" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="6" x="-11.049" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="7" x="-8.2804" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="8" x="-5.5118" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="9" x="-2.7686" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="10" x="0" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="11" x="2.7686" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="12" x="5.5118" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="13" x="8.2804" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="20" x="-23.4696" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="21" x="-20.701" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="22" x="-17.9324" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="23" x="-15.1892" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="24" x="-12.4206" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="25" x="-9.652" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="26" x="-6.9088" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="27" x="-4.1402" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="28" x="-1.3716" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="29" x="1.3716" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="30" x="4.1402" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="31" x="6.9088" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="14" x="11.049" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="15" x="13.8176" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="16" x="16.5608" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="17" x="19.3294" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="32" x="9.6774" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="33" x="12.4206" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="34" x="15.1892" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="35" x="17.9578" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="18" x="22.098" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="19" x="24.8412" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="36" x="20.701" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="37" x="23.4696" y="1.4224" drill="1.016" shape="octagon"/>
<text x="-24.5364" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">1</text>
<text x="-21.6154" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">2</text>
<text x="-18.9484" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">3</text>
<text x="-16.1544" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">4</text>
<text x="-13.3604" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">5</text>
<text x="-10.5664" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">6</text>
<text x="-7.8994" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">7</text>
<text x="-5.1054" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">8</text>
<text x="-2.3114" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">9</text>
<text x="-34.671" y="8.255" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-17.78" y="8.255" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="0.7366" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">10</text>
<text x="3.4036" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">11</text>
<text x="6.1976" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">12</text>
<text x="8.9916" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">13</text>
<text x="-8.7122" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">25</text>
<text x="-11.5062" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">24</text>
<text x="-14.4272" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">23</text>
<text x="-17.2212" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">22</text>
<text x="-19.8882" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">21</text>
<text x="-22.5552" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">20</text>
<text x="25.5778" y="-2.5654" size="0.9906" layer="21" ratio="12" rot="R180">19</text>
<text x="22.9108" y="-2.5654" size="0.9906" layer="21" ratio="12" rot="R180">18</text>
<text x="20.2438" y="-2.5654" size="0.9906" layer="21" ratio="12" rot="R180">17</text>
<text x="17.4498" y="-2.5654" size="0.9906" layer="21" ratio="12" rot="R180">16</text>
<text x="14.6558" y="-2.5654" size="0.9906" layer="21" ratio="12" rot="R180">15</text>
<text x="11.8618" y="-2.5654" size="0.9906" layer="21" ratio="12" rot="R180">14</text>
<text x="-6.096" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">26</text>
<text x="-3.302" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">27</text>
<text x="-0.508" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">28</text>
<text x="2.159" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">29</text>
<text x="4.953" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">30</text>
<text x="7.747" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">31</text>
<text x="10.414" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">32</text>
<text x="13.208" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">33</text>
<text x="16.002" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">34</text>
<text x="18.669" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">35</text>
<text x="21.463" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">36</text>
<text x="24.257" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">37</text>
</package>
</packages>
<packages3d>
<package3d name="F37D" urn="urn:adsk.eagle:package:10292/1" type="box" library_version="1">
<description>SUB-D</description>
<packageinstances>
<packageinstance name="F37D"/>
</packageinstances>
</package3d>
<package3d name="F37H" urn="urn:adsk.eagle:package:10295/1" type="box" library_version="1">
<description>SUB-D</description>
<packageinstances>
<packageinstance name="F37H"/>
</packageinstances>
</package3d>
<package3d name="F37HP" urn="urn:adsk.eagle:package:10243/1" type="box" library_version="1">
<description>SUB-D</description>
<packageinstances>
<packageinstance name="F37HP"/>
</packageinstances>
</package3d>
<package3d name="F37V" urn="urn:adsk.eagle:package:10294/1" type="box" library_version="1">
<description>SUB-D</description>
<packageinstances>
<packageinstance name="F37V"/>
</packageinstances>
</package3d>
<package3d name="F37VP" urn="urn:adsk.eagle:package:10251/1" type="box" library_version="1">
<description>SUB-D</description>
<packageinstances>
<packageinstance name="F37VP"/>
</packageinstances>
</package3d>
<package3d name="F37VB" urn="urn:adsk.eagle:package:10304/1" type="box" library_version="1">
<description>SUB-D</description>
<packageinstances>
<packageinstance name="F37VB"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="F37" urn="urn:adsk.eagle:symbol:10194/1" library_version="1">
<wire x1="-1.651" y1="23.749" x2="-1.651" y2="21.971" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="21.971" x2="1.524" y2="23.749" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="21.209" x2="-1.651" y2="19.431" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="19.431" x2="1.524" y2="21.209" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="18.669" x2="-1.651" y2="16.891" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="16.891" x2="1.524" y2="18.669" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="16.129" x2="-1.651" y2="14.351" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="14.351" x2="1.524" y2="16.129" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="13.589" x2="-1.651" y2="11.811" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="11.811" x2="1.524" y2="13.589" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="11.049" x2="-1.651" y2="9.271" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="9.271" x2="1.524" y2="11.049" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="8.509" x2="-1.651" y2="6.731" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="6.731" x2="1.524" y2="8.509" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="5.969" x2="-1.651" y2="4.191" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="4.191" x2="1.524" y2="5.969" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="3.429" x2="-1.651" y2="1.651" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="1.651" x2="1.524" y2="3.429" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="0.889" x2="-1.651" y2="-0.889" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-0.889" x2="1.524" y2="0.889" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-1.651" x2="-1.651" y2="-3.429" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-3.429" x2="1.524" y2="-1.651" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-4.191" x2="-1.651" y2="-5.969" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-5.969" x2="1.524" y2="-4.191" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-6.731" x2="-1.651" y2="-8.509" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-8.509" x2="1.524" y2="-6.731" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-9.271" x2="-1.651" y2="-11.049" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-11.049" x2="1.524" y2="-9.271" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-11.811" x2="-1.651" y2="-13.589" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-13.589" x2="1.524" y2="-11.811" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-14.351" x2="-1.651" y2="-16.129" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-16.129" x2="1.524" y2="-14.351" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-16.891" x2="-1.651" y2="-18.669" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-18.669" x2="1.524" y2="-16.891" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-19.431" x2="-1.651" y2="-21.209" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-21.209" x2="1.524" y2="-19.431" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-21.971" x2="-1.651" y2="-23.749" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-4.064" y1="24.7112" x2="-2.5226" y2="25.952" width="0.4064" layer="94" curve="-102.324066" cap="flat"/>
<wire x1="-2.5226" y1="25.9518" x2="3.0654" y2="24.7294" width="0.4064" layer="94"/>
<wire x1="3.0654" y1="24.7295" x2="4.0642" y2="23.4888" width="0.4064" layer="94" curve="-77.655139" cap="flat"/>
<wire x1="4.064" y1="-23.4888" x2="4.064" y2="23.4888" width="0.4064" layer="94"/>
<wire x1="3.0654" y1="-24.7294" x2="4.064" y2="-23.4888" width="0.4064" layer="94" curve="77.657889"/>
<wire x1="-4.064" y1="-24.7112" x2="-4.064" y2="24.7112" width="0.4064" layer="94"/>
<wire x1="-2.5226" y1="-25.9518" x2="3.0654" y2="-24.7294" width="0.4064" layer="94"/>
<wire x1="-4.064" y1="-24.7112" x2="-2.5226" y2="-25.9519" width="0.4064" layer="94" curve="102.337599" cap="flat"/>
<text x="-3.81" y="-28.575" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="26.67" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="22.86" visible="pad" length="middle" direction="pas"/>
<pin name="20" x="7.62" y="22.86" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="-7.62" y="20.32" visible="pad" length="middle" direction="pas"/>
<pin name="21" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="3" x="-7.62" y="17.78" visible="pad" length="middle" direction="pas"/>
<pin name="22" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="4" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas"/>
<pin name="23" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="5" x="-7.62" y="12.7" visible="pad" length="middle" direction="pas"/>
<pin name="24" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="6" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas"/>
<pin name="25" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="7" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas"/>
<pin name="26" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="8" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas"/>
<pin name="27" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="9" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="28" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="10" x="-7.62" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="29" x="7.62" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="11" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="30" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="12" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="31" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="13" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas"/>
<pin name="32" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="14" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas"/>
<pin name="33" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="15" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas"/>
<pin name="34" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="16" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas"/>
<pin name="35" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="17" x="-7.62" y="-17.78" visible="pad" length="middle" direction="pas"/>
<pin name="36" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="18" x="-7.62" y="-20.32" visible="pad" length="middle" direction="pas"/>
<pin name="37" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="19" x="-7.62" y="-22.86" visible="pad" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="F37" urn="urn:adsk.eagle:component:10389/1" prefix="X" uservalue="yes" library_version="1">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="F37" x="0" y="0"/>
</gates>
<devices>
<device name="D" package="F37D">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="16" pad="16"/>
<connect gate="-1" pin="17" pad="17"/>
<connect gate="-1" pin="18" pad="18"/>
<connect gate="-1" pin="19" pad="19"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="20" pad="20"/>
<connect gate="-1" pin="21" pad="21"/>
<connect gate="-1" pin="22" pad="22"/>
<connect gate="-1" pin="23" pad="23"/>
<connect gate="-1" pin="24" pad="24"/>
<connect gate="-1" pin="25" pad="25"/>
<connect gate="-1" pin="26" pad="26"/>
<connect gate="-1" pin="27" pad="27"/>
<connect gate="-1" pin="28" pad="28"/>
<connect gate="-1" pin="29" pad="29"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="30" pad="30"/>
<connect gate="-1" pin="31" pad="31"/>
<connect gate="-1" pin="32" pad="32"/>
<connect gate="-1" pin="33" pad="33"/>
<connect gate="-1" pin="34" pad="34"/>
<connect gate="-1" pin="35" pad="35"/>
<connect gate="-1" pin="36" pad="36"/>
<connect gate="-1" pin="37" pad="37"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10292/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="H" package="F37H">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="16" pad="16"/>
<connect gate="-1" pin="17" pad="17"/>
<connect gate="-1" pin="18" pad="18"/>
<connect gate="-1" pin="19" pad="19"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="20" pad="20"/>
<connect gate="-1" pin="21" pad="21"/>
<connect gate="-1" pin="22" pad="22"/>
<connect gate="-1" pin="23" pad="23"/>
<connect gate="-1" pin="24" pad="24"/>
<connect gate="-1" pin="25" pad="25"/>
<connect gate="-1" pin="26" pad="26"/>
<connect gate="-1" pin="27" pad="27"/>
<connect gate="-1" pin="28" pad="28"/>
<connect gate="-1" pin="29" pad="29"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="30" pad="30"/>
<connect gate="-1" pin="31" pad="31"/>
<connect gate="-1" pin="32" pad="32"/>
<connect gate="-1" pin="33" pad="33"/>
<connect gate="-1" pin="34" pad="34"/>
<connect gate="-1" pin="35" pad="35"/>
<connect gate="-1" pin="36" pad="36"/>
<connect gate="-1" pin="37" pad="37"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10295/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HP" package="F37HP">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="16" pad="16"/>
<connect gate="-1" pin="17" pad="17"/>
<connect gate="-1" pin="18" pad="18"/>
<connect gate="-1" pin="19" pad="19"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="20" pad="20"/>
<connect gate="-1" pin="21" pad="21"/>
<connect gate="-1" pin="22" pad="22"/>
<connect gate="-1" pin="23" pad="23"/>
<connect gate="-1" pin="24" pad="24"/>
<connect gate="-1" pin="25" pad="25"/>
<connect gate="-1" pin="26" pad="26"/>
<connect gate="-1" pin="27" pad="27"/>
<connect gate="-1" pin="28" pad="28"/>
<connect gate="-1" pin="29" pad="29"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="30" pad="30"/>
<connect gate="-1" pin="31" pad="31"/>
<connect gate="-1" pin="32" pad="32"/>
<connect gate="-1" pin="33" pad="33"/>
<connect gate="-1" pin="34" pad="34"/>
<connect gate="-1" pin="35" pad="35"/>
<connect gate="-1" pin="36" pad="36"/>
<connect gate="-1" pin="37" pad="37"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10243/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="V" package="F37V">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="16" pad="16"/>
<connect gate="-1" pin="17" pad="17"/>
<connect gate="-1" pin="18" pad="18"/>
<connect gate="-1" pin="19" pad="19"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="20" pad="20"/>
<connect gate="-1" pin="21" pad="21"/>
<connect gate="-1" pin="22" pad="22"/>
<connect gate="-1" pin="23" pad="23"/>
<connect gate="-1" pin="24" pad="24"/>
<connect gate="-1" pin="25" pad="25"/>
<connect gate="-1" pin="26" pad="26"/>
<connect gate="-1" pin="27" pad="27"/>
<connect gate="-1" pin="28" pad="28"/>
<connect gate="-1" pin="29" pad="29"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="30" pad="30"/>
<connect gate="-1" pin="31" pad="31"/>
<connect gate="-1" pin="32" pad="32"/>
<connect gate="-1" pin="33" pad="33"/>
<connect gate="-1" pin="34" pad="34"/>
<connect gate="-1" pin="35" pad="35"/>
<connect gate="-1" pin="36" pad="36"/>
<connect gate="-1" pin="37" pad="37"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10294/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="VP" package="F37VP">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="16" pad="16"/>
<connect gate="-1" pin="17" pad="17"/>
<connect gate="-1" pin="18" pad="18"/>
<connect gate="-1" pin="19" pad="19"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="20" pad="20"/>
<connect gate="-1" pin="21" pad="21"/>
<connect gate="-1" pin="22" pad="22"/>
<connect gate="-1" pin="23" pad="23"/>
<connect gate="-1" pin="24" pad="24"/>
<connect gate="-1" pin="25" pad="25"/>
<connect gate="-1" pin="26" pad="26"/>
<connect gate="-1" pin="27" pad="27"/>
<connect gate="-1" pin="28" pad="28"/>
<connect gate="-1" pin="29" pad="29"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="30" pad="30"/>
<connect gate="-1" pin="31" pad="31"/>
<connect gate="-1" pin="32" pad="32"/>
<connect gate="-1" pin="33" pad="33"/>
<connect gate="-1" pin="34" pad="34"/>
<connect gate="-1" pin="35" pad="35"/>
<connect gate="-1" pin="36" pad="36"/>
<connect gate="-1" pin="37" pad="37"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10251/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="VB" package="F37VB">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="16" pad="16"/>
<connect gate="-1" pin="17" pad="17"/>
<connect gate="-1" pin="18" pad="18"/>
<connect gate="-1" pin="19" pad="19"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="20" pad="20"/>
<connect gate="-1" pin="21" pad="21"/>
<connect gate="-1" pin="22" pad="22"/>
<connect gate="-1" pin="23" pad="23"/>
<connect gate="-1" pin="24" pad="24"/>
<connect gate="-1" pin="25" pad="25"/>
<connect gate="-1" pin="26" pad="26"/>
<connect gate="-1" pin="27" pad="27"/>
<connect gate="-1" pin="28" pad="28"/>
<connect gate="-1" pin="29" pad="29"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="30" pad="30"/>
<connect gate="-1" pin="31" pad="31"/>
<connect gate="-1" pin="32" pad="32"/>
<connect gate="-1" pin="33" pad="33"/>
<connect gate="-1" pin="34" pad="34"/>
<connect gate="-1" pin="35" pad="35"/>
<connect gate="-1" pin="36" pad="36"/>
<connect gate="-1" pin="37" pad="37"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10304/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X02" urn="urn:adsk.eagle:footprint:22309/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90" urn="urn:adsk.eagle:footprint:22310/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1X02" urn="urn:adsk.eagle:package:22435/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X02"/>
</packageinstances>
</package3d>
<package3d name="1X02/90" urn="urn:adsk.eagle:package:22437/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X02/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD2" urn="urn:adsk.eagle:symbol:22308/1" library_version="3">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X2" urn="urn:adsk.eagle:component:22516/3" prefix="JP" uservalue="yes" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22435/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X02/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22437/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="con-tycoelectronics" library_urn="urn:adsk.eagle:library:193" deviceset="RJ45*2" device="1-B" package3d_urn="urn:adsk.eagle:package:10663/1" technology="-6L"/>
<part name="X2" library="con-subd" library_urn="urn:adsk.eagle:library:189" deviceset="F37" device="HP" package3d_urn="urn:adsk.eagle:package:10243/1"/>
<part name="X3" library="con-tycoelectronics" library_urn="urn:adsk.eagle:library:193" deviceset="RJ45*2" device="1-B" package3d_urn="urn:adsk.eagle:package:10663/1" technology="-6L"/>
<part name="X4" library="con-tycoelectronics" library_urn="urn:adsk.eagle:library:193" deviceset="RJ45*2" device="1-B" package3d_urn="urn:adsk.eagle:package:10663/1" technology="-6L"/>
<part name="X5" library="con-tycoelectronics" library_urn="urn:adsk.eagle:library:193" deviceset="RJ45*2" device="1-B" package3d_urn="urn:adsk.eagle:package:10663/1" technology="-6L"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="JP1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X2" device="" package3d_urn="urn:adsk.eagle:package:22435/2"/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="G$1" x="-33.02" y="66.04" smashed="yes">
<attribute name="NAME" x="-38.1" y="77.724" size="1.778" layer="95"/>
<attribute name="VALUE" x="-25.4" y="55.88" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="X2" gate="-1" x="22.86" y="43.18" smashed="yes" rot="MR0">
<attribute name="VALUE" x="26.67" y="14.605" size="1.778" layer="96" rot="MR0"/>
<attribute name="NAME" x="26.67" y="69.85" size="1.778" layer="95" rot="MR0"/>
</instance>
<instance part="X3" gate="G$1" x="-5.08" y="66.04" smashed="yes">
<attribute name="NAME" x="-10.16" y="77.724" size="1.778" layer="95"/>
<attribute name="VALUE" x="2.54" y="55.88" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="X4" gate="G$1" x="-33.02" y="33.02" smashed="yes">
<attribute name="NAME" x="-38.1" y="44.704" size="1.778" layer="95"/>
<attribute name="VALUE" x="-25.4" y="22.86" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="X5" gate="G$1" x="-5.08" y="33.02" smashed="yes">
<attribute name="NAME" x="-10.16" y="44.704" size="1.778" layer="95"/>
<attribute name="VALUE" x="2.54" y="22.86" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND1" gate="1" x="22.86" y="0" smashed="yes">
<attribute name="VALUE" x="20.32" y="-2.54" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="-20.32" y="10.16" smashed="yes">
<attribute name="VALUE" x="-22.86" y="7.62" size="1.778" layer="96"/>
</instance>
<instance part="JP1" gate="G$1" x="0" y="10.16" smashed="yes" rot="R90">
<attribute name="NAME" x="-5.715" y="3.81" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="5.08" y="3.81" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND3" gate="1" x="-2.54" y="-2.54" smashed="yes">
<attribute name="VALUE" x="-5.08" y="-5.08" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="22.86" y1="2.54" x2="22.86" y2="10.16" width="0.1524" layer="91"/>
<pinref part="X2" gate="-1" pin="36"/>
<wire x1="15.24" y1="25.4" x2="12.7" y2="25.4" width="0.1524" layer="91"/>
<wire x1="12.7" y1="25.4" x2="12.7" y2="10.16" width="0.1524" layer="91"/>
<wire x1="22.86" y1="10.16" x2="12.7" y2="10.16" width="0.1524" layer="91"/>
<wire x1="22.86" y1="10.16" x2="33.02" y2="10.16" width="0.1524" layer="91"/>
<pinref part="X2" gate="-1" pin="17"/>
<wire x1="33.02" y1="25.4" x2="30.48" y2="25.4" width="0.1524" layer="91"/>
<wire x1="33.02" y1="10.16" x2="33.02" y2="25.4" width="0.1524" layer="91"/>
<junction x="22.86" y="10.16"/>
</segment>
<segment>
<pinref part="X4" gate="G$1" pin="S@1"/>
<wire x1="-38.1" y1="20.32" x2="-38.1" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="17.78" x2="-35.56" y2="17.78" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="-35.56" y1="17.78" x2="-33.02" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="17.78" x2="-30.48" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="17.78" x2="-20.32" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="17.78" x2="-20.32" y2="12.7" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="S@2"/>
<wire x1="-35.56" y1="20.32" x2="-35.56" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="S@3"/>
<wire x1="-33.02" y1="20.32" x2="-33.02" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="S@4"/>
<wire x1="-30.48" y1="20.32" x2="-30.48" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="17.78" x2="-10.16" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="S@1"/>
<wire x1="-10.16" y1="17.78" x2="-10.16" y2="20.32" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="S@4"/>
<wire x1="-2.54" y1="20.32" x2="-2.54" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="17.78" x2="-5.08" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="S@3"/>
<wire x1="-5.08" y1="17.78" x2="-7.62" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="17.78" x2="-10.16" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="20.32" x2="-5.08" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="S@2"/>
<wire x1="-7.62" y1="20.32" x2="-7.62" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="S@1"/>
<wire x1="-38.1" y1="53.34" x2="-38.1" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="50.8" x2="-35.56" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="S@4"/>
<wire x1="-35.56" y1="50.8" x2="-33.02" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="50.8" x2="-30.48" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="50.8" x2="-20.32" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="50.8" x2="-10.16" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="50.8" x2="-7.62" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="50.8" x2="-5.08" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="50.8" x2="-2.54" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="50.8" x2="-2.54" y2="53.34" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="S@3"/>
<wire x1="-5.08" y1="53.34" x2="-5.08" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="S@2"/>
<wire x1="-7.62" y1="53.34" x2="-7.62" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="S@1"/>
<wire x1="-10.16" y1="53.34" x2="-10.16" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="S@4"/>
<wire x1="-30.48" y1="53.34" x2="-30.48" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="S@3"/>
<wire x1="-33.02" y1="53.34" x2="-33.02" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="S@2"/>
<wire x1="-35.56" y1="53.34" x2="-35.56" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="50.8" x2="-20.32" y2="17.78" width="0.1524" layer="91"/>
<junction x="-20.32" y="17.78"/>
<junction x="-20.32" y="50.8"/>
<junction x="-30.48" y="50.8"/>
<junction x="-33.02" y="50.8"/>
<junction x="-35.56" y="50.8"/>
<junction x="-10.16" y="50.8"/>
<junction x="-7.62" y="50.8"/>
<junction x="-5.08" y="50.8"/>
<junction x="-10.16" y="17.78"/>
<junction x="-7.62" y="17.78"/>
<junction x="-5.08" y="17.78"/>
<junction x="-30.48" y="17.78"/>
<junction x="-33.02" y="17.78"/>
<junction x="-35.56" y="17.78"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="JP1" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="2.54" width="0.1524" layer="91"/>
<pinref part="JP1" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="7.62" width="0.1524" layer="91"/>
<wire x1="0" y1="7.62" x2="0" y2="2.54" width="0.1524" layer="91"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="2.54" width="0.1524" layer="91"/>
<junction x="-2.54" y="2.54"/>
</segment>
</net>
<net name="X1" class="0">
<segment>
<pinref part="X2" gate="-1" pin="16"/>
<wire x1="30.48" y1="27.94" x2="35.56" y2="27.94" width="0.1524" layer="91"/>
<label x="33.02" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-45.72" y1="60.96" x2="-40.64" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="7"/>
<label x="-45.72" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="X2" class="0">
<segment>
<pinref part="X2" gate="-1" pin="15"/>
<wire x1="30.48" y1="30.48" x2="35.56" y2="30.48" width="0.1524" layer="91"/>
<label x="33.02" y="30.48" size="1.778" layer="95"/>
<label x="33.02" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-45.72" y1="68.58" x2="-40.64" y2="68.58" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="4"/>
<label x="-45.72" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="X3" class="0">
<segment>
<pinref part="X2" gate="-1" pin="14"/>
<wire x1="30.48" y1="33.02" x2="35.56" y2="33.02" width="0.1524" layer="91"/>
<label x="33.02" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-45.72" y1="71.12" x2="-40.64" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="3"/>
<label x="-45.72" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="X4" class="0">
<segment>
<pinref part="X2" gate="-1" pin="13"/>
<wire x1="30.48" y1="35.56" x2="35.56" y2="35.56" width="0.1524" layer="91"/>
<label x="33.02" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-45.72" y1="76.2" x2="-40.64" y2="76.2" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="1"/>
<label x="-45.72" y="76.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="X5" class="0">
<segment>
<pinref part="X2" gate="-1" pin="12"/>
<wire x1="30.48" y1="38.1" x2="35.56" y2="38.1" width="0.1524" layer="91"/>
<label x="33.02" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-17.78" y1="76.2" x2="-12.7" y2="76.2" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="1"/>
<label x="-17.78" y="76.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="X6" class="0">
<segment>
<pinref part="X2" gate="-1" pin="11"/>
<wire x1="30.48" y1="40.64" x2="35.56" y2="40.64" width="0.1524" layer="91"/>
<label x="33.02" y="40.64" size="1.778" layer="95"/>
<wire x1="30.48" y1="40.64" x2="35.56" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-17.78" y1="71.12" x2="-12.7" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="3"/>
<label x="-17.78" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="X7" class="0">
<segment>
<pinref part="X2" gate="-1" pin="10"/>
<wire x1="30.48" y1="43.18" x2="35.56" y2="43.18" width="0.1524" layer="91"/>
<label x="33.02" y="43.18" size="1.778" layer="95"/>
<wire x1="30.48" y1="43.18" x2="35.56" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-17.78" y1="68.58" x2="-12.7" y2="68.58" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="4"/>
<label x="-17.78" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="X8" class="0">
<segment>
<pinref part="X2" gate="-1" pin="9"/>
<wire x1="30.48" y1="45.72" x2="35.56" y2="45.72" width="0.1524" layer="91"/>
<label x="33.02" y="45.72" size="1.778" layer="95"/>
<wire x1="30.48" y1="45.72" x2="35.56" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-17.78" y1="60.96" x2="-12.7" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="7"/>
<label x="-17.78" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="X9" class="0">
<segment>
<pinref part="X2" gate="-1" pin="8"/>
<wire x1="30.48" y1="48.26" x2="35.56" y2="48.26" width="0.1524" layer="91"/>
<label x="33.02" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-45.72" y1="43.18" x2="-40.64" y2="43.18" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="1"/>
<label x="-45.72" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="X10" class="0">
<segment>
<pinref part="X2" gate="-1" pin="7"/>
<wire x1="30.48" y1="50.8" x2="35.56" y2="50.8" width="0.1524" layer="91"/>
<label x="33.02" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-45.72" y1="38.1" x2="-40.64" y2="38.1" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="3"/>
<label x="-45.72" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="X11" class="0">
<segment>
<pinref part="X2" gate="-1" pin="6"/>
<wire x1="30.48" y1="53.34" x2="35.56" y2="53.34" width="0.1524" layer="91"/>
<label x="33.02" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-45.72" y1="35.56" x2="-40.64" y2="35.56" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="4"/>
<label x="-45.72" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="X12" class="0">
<segment>
<pinref part="X2" gate="-1" pin="5"/>
<wire x1="30.48" y1="55.88" x2="35.56" y2="55.88" width="0.1524" layer="91"/>
<label x="33.02" y="55.88" size="1.778" layer="95"/>
<wire x1="30.48" y1="55.88" x2="35.56" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-45.72" y1="27.94" x2="-40.64" y2="27.94" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="7"/>
<label x="-45.72" y="27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="X13" class="0">
<segment>
<pinref part="X2" gate="-1" pin="4"/>
<wire x1="30.48" y1="58.42" x2="35.56" y2="58.42" width="0.1524" layer="91"/>
<label x="33.02" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-17.78" y1="43.18" x2="-12.7" y2="43.18" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="1"/>
<label x="-17.78" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="X14" class="0">
<segment>
<pinref part="X2" gate="-1" pin="3"/>
<wire x1="30.48" y1="60.96" x2="35.56" y2="60.96" width="0.1524" layer="91"/>
<label x="33.02" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-17.78" y1="38.1" x2="-12.7" y2="38.1" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="3"/>
<label x="-17.78" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="X15" class="0">
<segment>
<pinref part="X2" gate="-1" pin="2"/>
<wire x1="30.48" y1="63.5" x2="35.56" y2="63.5" width="0.1524" layer="91"/>
<label x="33.02" y="63.5" size="1.778" layer="95"/>
<wire x1="30.48" y1="63.5" x2="35.56" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-17.78" y1="35.56" x2="-12.7" y2="35.56" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="4"/>
<label x="-17.78" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="X16" class="0">
<segment>
<pinref part="X2" gate="-1" pin="1"/>
<wire x1="30.48" y1="66.04" x2="35.56" y2="66.04" width="0.1524" layer="91"/>
<label x="33.02" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-17.78" y1="27.94" x2="-12.7" y2="27.94" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="7"/>
<label x="-17.78" y="27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y16" class="0">
<segment>
<pinref part="X2" gate="-1" pin="20"/>
<wire x1="15.24" y1="66.04" x2="10.16" y2="66.04" width="0.1524" layer="91"/>
<label x="10.16" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-12.7" y1="25.4" x2="-17.78" y2="25.4" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="8"/>
<label x="-17.78" y="25.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y15" class="0">
<segment>
<pinref part="X2" gate="-1" pin="21"/>
<wire x1="15.24" y1="63.5" x2="10.16" y2="63.5" width="0.1524" layer="91"/>
<label x="10.16" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-12.7" y1="33.02" x2="-17.78" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="5"/>
<label x="-17.78" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y14" class="0">
<segment>
<pinref part="X2" gate="-1" pin="22"/>
<wire x1="15.24" y1="60.96" x2="10.16" y2="60.96" width="0.1524" layer="91"/>
<label x="10.16" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-12.7" y1="30.48" x2="-17.78" y2="30.48" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="6"/>
<label x="-17.78" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y13" class="0">
<segment>
<pinref part="X2" gate="-1" pin="23"/>
<wire x1="15.24" y1="58.42" x2="10.16" y2="58.42" width="0.1524" layer="91"/>
<label x="10.16" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-12.7" y1="40.64" x2="-17.78" y2="40.64" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="2"/>
<label x="-17.78" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y12" class="0">
<segment>
<pinref part="X2" gate="-1" pin="24"/>
<wire x1="15.24" y1="55.88" x2="10.16" y2="55.88" width="0.1524" layer="91"/>
<label x="10.16" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-40.64" y1="25.4" x2="-45.72" y2="25.4" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="8"/>
<label x="-45.72" y="25.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y11" class="0">
<segment>
<pinref part="X2" gate="-1" pin="25"/>
<wire x1="15.24" y1="53.34" x2="10.16" y2="53.34" width="0.1524" layer="91"/>
<label x="10.16" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-40.64" y1="33.02" x2="-45.72" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="5"/>
<label x="-45.72" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y10" class="0">
<segment>
<pinref part="X2" gate="-1" pin="26"/>
<wire x1="15.24" y1="50.8" x2="10.16" y2="50.8" width="0.1524" layer="91"/>
<label x="10.16" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-40.64" y1="30.48" x2="-45.72" y2="30.48" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="6"/>
<label x="-45.72" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y9" class="0">
<segment>
<pinref part="X2" gate="-1" pin="27"/>
<wire x1="15.24" y1="48.26" x2="10.16" y2="48.26" width="0.1524" layer="91"/>
<label x="10.16" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-40.64" y1="40.64" x2="-45.72" y2="40.64" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="2"/>
<label x="-45.72" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y8" class="0">
<segment>
<pinref part="X2" gate="-1" pin="28"/>
<wire x1="15.24" y1="45.72" x2="10.16" y2="45.72" width="0.1524" layer="91"/>
<label x="10.16" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-12.7" y1="58.42" x2="-17.78" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="8"/>
<label x="-17.78" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y7" class="0">
<segment>
<pinref part="X2" gate="-1" pin="29"/>
<wire x1="15.24" y1="43.18" x2="10.16" y2="43.18" width="0.1524" layer="91"/>
<label x="10.16" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-12.7" y1="66.04" x2="-17.78" y2="66.04" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="5"/>
<label x="-17.78" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y6" class="0">
<segment>
<pinref part="X2" gate="-1" pin="30"/>
<wire x1="15.24" y1="40.64" x2="10.16" y2="40.64" width="0.1524" layer="91"/>
<label x="10.16" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-12.7" y1="63.5" x2="-17.78" y2="63.5" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="6"/>
<label x="-17.78" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y5" class="0">
<segment>
<pinref part="X2" gate="-1" pin="31"/>
<wire x1="15.24" y1="38.1" x2="10.16" y2="38.1" width="0.1524" layer="91"/>
<label x="10.16" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-12.7" y1="73.66" x2="-17.78" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="2"/>
<label x="-17.78" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y4" class="0">
<segment>
<pinref part="X2" gate="-1" pin="32"/>
<wire x1="15.24" y1="35.56" x2="10.16" y2="35.56" width="0.1524" layer="91"/>
<label x="10.16" y="35.56" size="1.778" layer="95"/>
<wire x1="15.24" y1="35.56" x2="10.16" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-40.64" y1="73.66" x2="-45.72" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="2"/>
<label x="-45.72" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y3" class="0">
<segment>
<pinref part="X2" gate="-1" pin="33"/>
<wire x1="15.24" y1="33.02" x2="10.16" y2="33.02" width="0.1524" layer="91"/>
<label x="10.16" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-40.64" y1="63.5" x2="-45.72" y2="63.5" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="6"/>
<label x="-45.72" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y2" class="0">
<segment>
<pinref part="X2" gate="-1" pin="34"/>
<wire x1="15.24" y1="30.48" x2="10.16" y2="30.48" width="0.1524" layer="91"/>
<label x="10.16" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-40.64" y1="66.04" x2="-45.72" y2="66.04" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="5"/>
<label x="-45.72" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="Y1" class="0">
<segment>
<pinref part="X2" gate="-1" pin="35"/>
<wire x1="15.24" y1="27.94" x2="10.16" y2="27.94" width="0.1524" layer="91"/>
<label x="10.16" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-40.64" y1="58.42" x2="-45.72" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="8"/>
<label x="-45.72" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
