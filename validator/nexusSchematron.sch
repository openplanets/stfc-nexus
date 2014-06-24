<?xml version="1.0" encoding="UTF-8"?><sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
   <sch:ns uri="http://www.w3.org/1999/XSL/Transform" prefix="xsl"/>
   <sch:ns uri="http://definition.nexusformat.org/schema/3.1" prefix="nx"/>
   <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
   



<sch:pattern fpi="definition: NXfilter fields">
      <sch:rule context="//nx:NXfilter/*[count(child::*) = 0]">
         <sch:let name="fields" value="('description','status','temperature','thickness','density','chemical_formula','unit_cell_a','unit_cell_b','unit_cell_c','unit_cell_alpha','unit_cell_beta','unit_cell_gamma','unit_cell_volume','orientation_matrix','m_value','substrate_material','substrate_thickness','coating_material','substrate_roughness','coating_roughness')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXfilter groups">
      <sch:rule context="//nx:NXfilter/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry','NXdata','NXlog','NXsensor')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/description">
      <sch:rule context="//nx:NXfilter/nx:description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/status">
      <sch:rule context="//nx:NXfilter/nx:status"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'status'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXfilter/status_enumeration"><sch:rule context="//nx:NXfilter/nx:status">
         <sch:let name="enumeration" value="('in','out')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
          <sch:pattern fpi="nx:NXfilter/temperature">
      <sch:rule context="//nx:NXfilter/nx:temperature"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'temperature'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/thickness">
      <sch:rule context="//nx:NXfilter/nx:thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/density">
      <sch:rule context="//nx:NXfilter/nx:density"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'density'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/chemical_formula">
      <sch:rule context="//nx:NXfilter/nx:chemical_formula"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'chemical_formula'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXfilter/unit_cell_a">
      <sch:rule context="//nx:NXfilter/nx:unit_cell_a"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_a'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
          <sch:pattern fpi="nx:NXfilter/unit_cell_b">
      <sch:rule context="//nx:NXfilter/nx:unit_cell_b"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_b'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/unit_cell_c">
      <sch:rule context="//nx:NXfilter/nx:unit_cell_c"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_c'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/unit_cell_alpha">
      <sch:rule context="//nx:NXfilter/nx:unit_cell_alpha"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_alpha'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/unit_cell_beta">
      <sch:rule context="//nx:NXfilter/nx:unit_cell_beta"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_beta'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/unit_cell_gamma">
      <sch:rule context="//nx:NXfilter/nx:unit_cell_gamma"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_gamma'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/unit_cell_volume">
      <sch:rule context="//nx:NXfilter/nx:unit_cell_volume"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_volume'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/orientation_matrix">
      <sch:rule context="//nx:NXfilter/nx:orientation_matrix"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'orientation_matrix'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/m_value">
      <sch:rule context="//nx:NXfilter/nx:m_value"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'm_value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/substrate_material">
      <sch:rule context="//nx:NXfilter/nx:substrate_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'substrate_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXfilter/substrate_thickness">
      <sch:rule context="//nx:NXfilter/nx:substrate_thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'substrate_thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/coating_material">
      <sch:rule context="//nx:NXfilter/nx:coating_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'coating_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/substrate_roughness">
      <sch:rule context="//nx:NXfilter/nx:substrate_roughness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'substrate_roughness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfilter/coating_roughness">
      <sch:rule context="//nx:NXfilter/nx:coating_roughness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'coating_roughness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>

  <sch:pattern fpi="definition: NXcrystal fields">
      <sch:rule context="//nx:NXcrystal/*[count(child::*) = 0]">
         <sch:let name="fields" value="('usage','type','chemical_formula','order_no','cut_angle','space_group','unit_cell','unit_cell_a','unit_cell_b','unit_cell_c','unit_cell_alpha','unit_cell_beta','unit_cell_gamma','unit_cell_volume','orientation_matrix','wavelength','d_spacing','scattering_vector','reflection','thickness','density','segment_width','segment_height','segment_thickness','segment_gap','segment_columns','segment_rows','mosaic_horizontal','mosaic_vertical','curvature_horizontal','curvature_vertical','is_cylindrical','cylindrical_orientation_angle','polar_angle','azimuthal_angle','bragg_angle','temperature','temperature_coefficient')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXcrystal groups">
      <sch:rule context="//nx:NXcrystal/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry','NXlog','NXdata','NXdata','NXshape')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXcrystal/usage">
      <sch:rule context="//nx:NXcrystal/nx:usage"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'usage'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXcrystal/usage_enumeration"><sch:rule context="//nx:NXcrystal/nx:usage">
         <sch:let name="enumeration" value="('Bragg','Laue')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/type">
      <sch:rule context="//nx:NXcrystal/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/chemical_formula">
      <sch:rule context="//nx:NXcrystal/nx:chemical_formula"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'chemical_formula'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/order_no">
      <sch:rule context="//nx:NXcrystal/nx:order_no"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'order_no'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/cut_angle">
      <sch:rule context="//nx:NXcrystal/nx:cut_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'cut_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/space_group">
      <sch:rule context="//nx:NXcrystal/nx:space_group"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'space_group'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/unit_cell">
      <sch:rule context="//nx:NXcrystal/nx:unit_cell"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/unit_cell_a">
      <sch:rule context="//nx:NXcrystal/nx:unit_cell_a"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_a'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/unit_cell_b">
      <sch:rule context="//nx:NXcrystal/nx:unit_cell_b"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_b'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/unit_cell_c">
      <sch:rule context="//nx:NXcrystal/nx:unit_cell_c"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_c'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/unit_cell_alpha">
      <sch:rule context="//nx:NXcrystal/nx:unit_cell_alpha"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_alpha'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/unit_cell_beta">
      <sch:rule context="//nx:NXcrystal/nx:unit_cell_beta"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_beta'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/unit_cell_gamma">
      <sch:rule context="//nx:NXcrystal/nx:unit_cell_gamma"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_gamma'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/unit_cell_volume">
      <sch:rule context="//nx:NXcrystal/nx:unit_cell_volume"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_volume'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/orientation_matrix">
      <sch:rule context="//nx:NXcrystal/nx:orientation_matrix"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'orientation_matrix'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/wavelength">
      <sch:rule context="//nx:NXcrystal/nx:wavelength"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'wavelength'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/d_spacing">
      <sch:rule context="//nx:NXcrystal/nx:d_spacing"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'd_spacing'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/scattering_vector">
      <sch:rule context="//nx:NXcrystal/nx:scattering_vector"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'scattering_vector'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/reflection">
      <sch:rule context="//nx:NXcrystal/nx:reflection"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'reflection'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/thickness">
      <sch:rule context="//nx:NXcrystal/nx:thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/density">
      <sch:rule context="//nx:NXcrystal/nx:density"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'density'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/segment_width">
      <sch:rule context="//nx:NXcrystal/nx:segment_width"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'segment_width'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/segment_height">
      <sch:rule context="//nx:NXcrystal/nx:segment_height"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'segment_height'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/segment_thickness">
      <sch:rule context="//nx:NXcrystal/nx:segment_thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'segment_thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/segment_gap">
      <sch:rule context="//nx:NXcrystal/nx:segment_gap"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'segment_gap'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/segment_columns">
      <sch:rule context="//nx:NXcrystal/nx:segment_columns"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'segment_columns'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/segment_rows">
      <sch:rule context="//nx:NXcrystal/nx:segment_rows"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'segment_rows'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/mosaic_horizontal">
      <sch:rule context="//nx:NXcrystal/nx:mosaic_horizontal"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'mosaic_horizontal'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/mosaic_vertical">
      <sch:rule context="//nx:NXcrystal/nx:mosaic_vertical"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'mosaic_vertical'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/curvature_horizontal">
      <sch:rule context="//nx:NXcrystal/nx:curvature_horizontal"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'curvature_horizontal'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/curvature_vertical">
      <sch:rule context="//nx:NXcrystal/nx:curvature_vertical"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'curvature_vertical'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/is_cylindrical">
      <sch:rule context="//nx:NXcrystal/nx:is_cylindrical"><sch:assert test="count(index-of(('NX_BOOLEAN'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_BOOLEAN') for 'is_cylindrical'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/cylindrical_orientation_angle">
      <sch:rule context="//nx:NXcrystal/nx:cylindrical_orientation_angle"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'cylindrical_orientation_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/polar_angle">
      <sch:rule context="//nx:NXcrystal/nx:polar_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'polar_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/azimuthal_angle">
      <sch:rule context="//nx:NXcrystal/nx:azimuthal_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'azimuthal_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/bragg_angle">
      <sch:rule context="//nx:NXcrystal/nx:bragg_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'bragg_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/temperature">
      <sch:rule context="//nx:NXcrystal/nx:temperature"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'temperature'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcrystal/temperature_coefficient">
      <sch:rule context="//nx:NXcrystal/nx:temperature_coefficient"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'temperature_coefficient'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
<sch:pattern fpi="definition: NXsensor fields">
      <sch:rule context="//nx:NXsensor/*[count(child::*) = 0]">
         <sch:let name="fields" value="('model','name','short_name','attached_to','measurement','type','run_control','high_trip_value','low_trip_value','value','value_deriv1','value_deriv2','external_field_brief')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXsensor groups">
      <sch:rule context="//nx:NXsensor/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry','NXlog','NXlog','NXlog','NXorientation')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsensor/model">
      <sch:rule context="//nx:NXsensor/nx:model"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'model'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsensor/name">
      <sch:rule context="//nx:NXsensor/nx:name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsensor/short_name">
      <sch:rule context="//nx:NXsensor/nx:short_name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'short_name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsensor/attached_to">
      <sch:rule context="//nx:NXsensor/nx:attached_to"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'attached_to'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXsensor/measurement">
      <sch:rule context="//nx:NXsensor/nx:measurement"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'measurement'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXsensor/measurement_enumeration"><sch:rule context="//nx:NXsensor/nx:measurement">
         <sch:let name="enumeration" value="('temperature','pH','magnetic_field','electric_field','conductivity','resistance','voltage','pressure','flow','stress','strain','shear','surface_pressure')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsensor/type">
      <sch:rule context="//nx:NXsensor/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsensor/run_control">
      <sch:rule context="//nx:NXsensor/nx:run_control"><sch:assert test="count(index-of(('NX_BOOLEAN'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_BOOLEAN') for 'run_control'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsensor/high_trip_value">
      <sch:rule context="//nx:NXsensor/nx:high_trip_value"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'high_trip_value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsensor/low_trip_value">
      <sch:rule context="//nx:NXsensor/nx:low_trip_value"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'low_trip_value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsensor/value">
      <sch:rule context="//nx:NXsensor/nx:value"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsensor/value_deriv1">
      <sch:rule context="//nx:NXsensor/nx:value_deriv1"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'value_deriv1'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsensor/value_deriv2">
      <sch:rule context="//nx:NXsensor/nx:value_deriv2"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'value_deriv2'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXsensor/external_field_brief">
      <sch:rule context="//nx:NXsensor/nx:external_field_brief"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'external_field_brief'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXsensor/external_field_brief_enumeration"><sch:rule context="//nx:NXsensor/nx:external_field_brief">
         <sch:let name="enumeration" value="('along beam','across beam','transverse','solenoidal','flow shear gradient','flow vorticity')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXdata fields">
      <sch:rule context="//nx:NXdata/*[count(child::*) = 0]">
         <sch:let name="fields" value="('polar','polar_angle','spectrum_index','source_detector_distance','distance','delt', 'counts','NAPIlink','variable','variable_errors','data','errors','scaling_factor','offset','x','y','z')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXdata groups">
      <sch:rule context="//nx:NXdata/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in bbb: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdata/variable">
      <sch:rule context="//nx:NXdata/nx:variable"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'variable'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdata/variable_errors">
      <sch:rule context="//nx:NXdata/nx:variable_errors"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'variable_errors'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdata/data">
      <sch:rule context="//nx:NXdata/nx:data"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'data'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdata/errors">
      <sch:rule context="//nx:NXdata/nx:errors"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'errors'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdata/scaling_factor">
      <sch:rule context="//nx:NXdata/nx:scaling_factor"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'scaling_factor'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdata/offset">
      <sch:rule context="//nx:NXdata/nx:offset"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'offset'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdata/x">
      <sch:rule context="//nx:NXdata/nx:x"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'x'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdata/y">
      <sch:rule context="//nx:NXdata/nx:y"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'y'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdata/z">
      <sch:rule context="//nx:NXdata/nx:z"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'z'
                </sch:assert>
      </sch:rule>
   </sch:pattern>




   <sch:pattern fpi="definition: NXlog fields">
      <sch:rule context="//nx:NXlog/*[count(child::*) = 0]">
         <sch:let name="fields" value="('name','time','value','raw_value','description','average_value','average_value_error','minimum_value','maximum_value','duration')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXlog groups">
      <sch:rule context="//nx:NXlog/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXlog/time">
      <sch:rule context="//nx:NXlog/nx:time"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXlog/value">
      <sch:rule context="//nx:NXlog/nx:value"><sch:assert test="count(index-of(('NX_CHAR','NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR','NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXlog/raw_value">
      <sch:rule context="//nx:NXlog/nx:raw_value"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'raw_value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXlog/description">
      <sch:rule context="//nx:NXlog/nx:description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXlog/average_value">
      <sch:rule context="//nx:NXlog/nx:average_value"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'average_value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXlog/average_value_error">
      <sch:rule context="//nx:NXlog/nx:average_value_error"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'average_value_error'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXlog/minimum_value">
      <sch:rule context="//nx:NXlog/nx:minimum_value"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'minimum_value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXlog/maximum_value">
      <sch:rule context="//nx:NXlog/nx:maximum_value"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'maximum_value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXlog/duration">
      <sch:rule context="//nx:NXlog/nx:duration"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'duration'
                </sch:assert>
      </sch:rule>
   </sch:pattern>


   <sch:pattern fpi="definition: NXbending_magnet fields">
      <sch:rule context="//nx:NXbending_magnet/*[count(child::*) = 0]">
         <sch:let name="fields" value="('critical_energy','bending_radius','magnetic_field','accepted_photon_beam_divergence','source_distance_x','source_distance_y','divergence_x_plus','divergence_x_minus','divergence_y_plus','divergence_y_minus')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXbending_magnet groups">
      <sch:rule context="//nx:NXbending_magnet/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXdata','NXgeometry')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbending_magnet/critical_energy">
      <sch:rule context="//nx:NXbending_magnet/nx:critical_energy"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'critical_energy'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbending_magnet/bending_radius">
      <sch:rule context="//nx:NXbending_magnet/nx:bending_radius"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'bending_radius'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbending_magnet/magnetic_field">
      <sch:rule context="//nx:NXbending_magnet/nx:magnetic_field"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'magnetic_field'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbending_magnet/accepted_photon_beam_divergence">
      <sch:rule context="//nx:NXbending_magnet/nx:accepted_photon_beam_divergence"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'accepted_photon_beam_divergence'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbending_magnet/source_distance_x">
      <sch:rule context="//nx:NXbending_magnet/nx:source_distance_x"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'source_distance_x'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbending_magnet/source_distance_y">
      <sch:rule context="//nx:NXbending_magnet/nx:source_distance_y"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'source_distance_y'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbending_magnet/divergence_x_plus">
      <sch:rule context="//nx:NXbending_magnet/nx:divergence_x_plus"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'divergence_x_plus'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbending_magnet/divergence_x_minus">
      <sch:rule context="//nx:NXbending_magnet/nx:divergence_x_minus"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'divergence_x_minus'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbending_magnet/divergence_y_plus">
      <sch:rule context="//nx:NXbending_magnet/nx:divergence_y_plus"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'divergence_y_plus'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbending_magnet/divergence_y_minus">
      <sch:rule context="//nx:NXbending_magnet/nx:divergence_y_minus"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'divergence_y_minus'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   

<sch:pattern fpi="definition: NXroot fields">
      <sch:rule context="//nx:NXroot/*[count(child::*) = 0]">
         <sch:let name="fields" value="()"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXroot groups">
      <sch:rule context="//nx:NXroot/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXentry')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
   


<sch:pattern fpi="definition: NXuser fields">
      <sch:rule context="//nx:NXuser/*[count(child::*) = 0]">
         <sch:let name="fields" value="('name','role','affiliation','address','telephone_number','fax_number','email','facility_user_id')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXuser groups">
      <sch:rule context="//nx:NXuser/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXuser/name">
      <sch:rule context="//nx:NXuser/nx:name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXuser/role">
      <sch:rule context="//nx:NXuser/nx:role"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'role'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXuser/affiliation">
      <sch:rule context="//nx:NXuser/nx:affiliation"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'affiliation'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXuser/address">
      <sch:rule context="//nx:NXuser/nx:address"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'address'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXuser/telephone_number">
      <sch:rule context="//nx:NXuser/nx:telephone_number"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'telephone_number'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXuser/fax_number">
      <sch:rule context="//nx:NXuser/nx:fax_number"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'fax_number'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXuser/email">
      <sch:rule context="//nx:NXuser/nx:email"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'email'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXuser/facility_user_id">
      <sch:rule context="//nx:NXuser/nx:facility_user_id"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'facility_user_id'
                </sch:assert>
      </sch:rule>
   </sch:pattern>



   <sch:pattern fpi="definition: NXbeam fields">
      <sch:rule context="//nx:NXbeam/*[count(child::*) = 0]">
         <sch:let name="fields" value="('distance','incident_energy','final_energy','energy_transfer','incident_wavelength','incident_wavelength_spread','incident_beam_divergence','final_wavelength','incident_polarization','final_polarization','final_wavelength_spread','final_beam_divergence','flux')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXbeam groups">
      <sch:rule context="//nx:NXbeam/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXdata')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/distance">
      <sch:rule context="//nx:NXbeam/nx:distance"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'distance'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/incident_energy">
      <sch:rule context="//nx:NXbeam/nx:incident_energy"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'incident_energy'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/final_energy">
      <sch:rule context="//nx:NXbeam/nx:final_energy"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'final_energy'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/energy_transfer">
      <sch:rule context="//nx:NXbeam/nx:energy_transfer"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'energy_transfer'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/incident_wavelength">
      <sch:rule context="//nx:NXbeam/nx:incident_wavelength"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'incident_wavelength'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/incident_wavelength_spread">
      <sch:rule context="//nx:NXbeam/nx:incident_wavelength_spread"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'incident_wavelength_spread'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/incident_beam_divergence">
      <sch:rule context="//nx:NXbeam/nx:incident_beam_divergence"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'incident_beam_divergence'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/final_wavelength">
      <sch:rule context="//nx:NXbeam/nx:final_wavelength"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'final_wavelength'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/incident_polarization">
      <sch:rule context="//nx:NXbeam/nx:incident_polarization"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'incident_polarization'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/final_polarization">
      <sch:rule context="//nx:NXbeam/nx:final_polarization"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'final_polarization'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/final_wavelength_spread">
      <sch:rule context="//nx:NXbeam/nx:final_wavelength_spread"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'final_wavelength_spread'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/final_beam_divergence">
      <sch:rule context="//nx:NXbeam/nx:final_beam_divergence"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'final_beam_divergence'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam/flux">
      <sch:rule context="//nx:NXbeam/nx:flux"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'flux'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   


<sch:pattern fpi="definition: NXenvironment fields">
      <sch:rule context="//nx:NXenvironment/*[count(child::*) = 0]">
         <sch:let name="fields" value="('name','short_name','type','description','program')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXenvironment groups">
      <sch:rule context="//nx:NXenvironment/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry','NXnote','NXsensor')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXenvironment/name">
      <sch:rule context="//nx:NXenvironment/nx:name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXenvironment/short_name">
      <sch:rule context="//nx:NXenvironment/nx:short_name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'short_name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXenvironment/type">
      <sch:rule context="//nx:NXenvironment/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXenvironment/description">
      <sch:rule context="//nx:NXenvironment/nx:description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXenvironment/program">
      <sch:rule context="//nx:NXenvironment/nx:program"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'program'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   

<sch:pattern fpi="definition: NXmoderator fields">
      <sch:rule context="//nx:NXmoderator/*[count(child::*) = 0]">
         <sch:let name="fields" value="('distance','type','poison_depth','coupled','coupling_material','poison_material','temperature')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXmoderator groups">
      <sch:rule context="//nx:NXmoderator/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry','NXlog','NXdata')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXmoderator/distance">
      <sch:rule context="//nx:NXmoderator/nx:distance"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'distance'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmoderator/type">
      <sch:rule context="//nx:NXmoderator/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXmoderator/type_enumeration"><sch:rule context="//nx:NXmoderator/nx:type">
         <sch:let name="enumeration" value="('H20','D20','Liquid H2','Liquid CH4','Liquid D2','Solid D2','C','Solid CH4','Solid H2')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmoderator/poison_depth">
      <sch:rule context="//nx:NXmoderator/nx:poison_depth"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'poison_depth'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmoderator/coupled">
      <sch:rule context="//nx:NXmoderator/nx:coupled"><sch:assert test="count(index-of(('NX_BOOLEAN'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_BOOLEAN') for 'coupled'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmoderator/coupling_material">
      <sch:rule context="//nx:NXmoderator/nx:coupling_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'coupling_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmoderator/poison_material">
      <sch:rule context="//nx:NXmoderator/nx:poison_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'poison_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXmoderator/poison_material_enumeration"><sch:rule context="//nx:NXmoderator/nx:poison_material">
         <sch:let name="enumeration" value="('Gd','Cd')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmoderator/temperature">
      <sch:rule context="//nx:NXmoderator/nx:temperature"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'temperature'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   




<sch:pattern fpi="definition: NXguide fields">
      <sch:rule context="//nx:NXguide/*[count(child::*) = 0]">
         <sch:let name="fields" value="('description','incident_angle','bend_angle_x','bend_angle_y','interior_atmosphere','external_material','m_value','substrate_material','substrate_thickness','coating_material','substrate_roughness','coating_roughness','number_sections')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXguide groups">
      <sch:rule context="//nx:NXguide/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry','NXdata')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXguide/description">
      <sch:rule context="//nx:NXguide/nx:description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/incident_angle">
      <sch:rule context="//nx:NXguide/nx:incident_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'incident_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXguide/nx:NXdata[@name='reflectivity']/data">
      <sch:rule context="//nx:NXguide/nx:NXdata[@name='reflectivity']/nx:data"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'data'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/nx:NXdata[@name='reflectivity']/surface">
      <sch:rule context="//nx:NXguide/nx:NXdata[@name='reflectivity']/nx:surface"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'surface'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/nx:NXdata[@name='reflectivity']/wavelength">
      <sch:rule context="//nx:NXguide/nx:NXdata[@name='reflectivity']/nx:wavelength"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'wavelength'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/bend_angle_x">
      <sch:rule context="//nx:NXguide/nx:bend_angle_x"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'bend_angle_x'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/bend_angle_y">
      <sch:rule context="//nx:NXguide/nx:bend_angle_y"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'bend_angle_y'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/interior_atmosphere">
      <sch:rule context="//nx:NXguide/nx:interior_atmosphere"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'interior_atmosphere'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXguide/interior_atmosphere_enumeration"><sch:rule context="//nx:NXguide/nx:interior_atmosphere">
         <sch:let name="enumeration" value="('vacuum','helium','argon')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/external_material">
      <sch:rule context="//nx:NXguide/nx:external_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'external_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/m_value">
      <sch:rule context="//nx:NXguide/nx:m_value"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'm_value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/substrate_material">
      <sch:rule context="//nx:NXguide/nx:substrate_material"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'substrate_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/substrate_thickness">
      <sch:rule context="//nx:NXguide/nx:substrate_thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'substrate_thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/coating_material">
      <sch:rule context="//nx:NXguide/nx:coating_material"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'coating_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/substrate_roughness">
      <sch:rule context="//nx:NXguide/nx:substrate_roughness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'substrate_roughness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/coating_roughness">
      <sch:rule context="//nx:NXguide/nx:coating_roughness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'coating_roughness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXguide/number_sections">
      <sch:rule context="//nx:NXguide/nx:number_sections"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'number_sections'
                </sch:assert>
      </sch:rule>
   </sch:pattern>




   <sch:pattern fpi="definition: NXcapillary fields">
      <sch:rule context="//nx:NXcapillary/*[count(child::*) = 0]">
         <sch:let name="fields" value="('type','manufacturer','maximum_incident_angle','accepting_aperture','working_distance','focal_size')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXcapillary groups">
      <sch:rule context="//nx:NXcapillary/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXdata','NXdata')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcapillary/type">
      <sch:rule context="//nx:NXcapillary/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXcapillary/type_enumeration"><sch:rule context="//nx:NXcapillary/nx:type">
         <sch:let name="enumeration" value="('single_bounce','polycapillary','conical_capillary')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcapillary/manufacturer">
      <sch:rule context="//nx:NXcapillary/nx:manufacturer"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'manufacturer'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcapillary/maximum_incident_angle">
      <sch:rule context="//nx:NXcapillary/nx:maximum_incident_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'maximum_incident_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcapillary/accepting_aperture">
      <sch:rule context="//nx:NXcapillary/nx:accepting_aperture"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'accepting_aperture'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXcapillary/working_distance">
      <sch:rule context="//nx:NXcapillary/nx:working_distance"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'working_distance'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcapillary/focal_size">
      <sch:rule context="//nx:NXcapillary/nx:focal_size"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'focal_size'
                </sch:assert>
      </sch:rule>
   </sch:pattern>



   <sch:pattern fpi="definition: NXdisk_chopper fields">
      <sch:rule context="//nx:NXdisk_chopper/*[count(child::*) = 0]">
         <sch:let name="fields" value="('type','rotation_speed','slits','slit_angle','pair_separation','radius','slit_height','phase','ratio','distance','wavelength_range')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXdisk_chopper groups">
      <sch:rule context="//nx:NXdisk_chopper/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdisk_chopper/type">
      <sch:rule context="//nx:NXdisk_chopper/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXdisk_chopper/type_enumeration"><sch:rule context="//nx:NXdisk_chopper/nx:type">
         <sch:let name="enumeration" value="('Chopper type single','contra_rotating_pair','synchro_pair')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdisk_chopper/rotation_speed">
      <sch:rule context="//nx:NXdisk_chopper/nx:rotation_speed"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'rotation_speed'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdisk_chopper/slits">
      <sch:rule context="//nx:NXdisk_chopper/nx:slits"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'slits'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdisk_chopper/slit_angle">
      <sch:rule context="//nx:NXdisk_chopper/nx:slit_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'slit_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdisk_chopper/pair_separation">
      <sch:rule context="//nx:NXdisk_chopper/nx:pair_separation"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'pair_separation'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdisk_chopper/radius">
      <sch:rule context="//nx:NXdisk_chopper/nx:radius"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'radius'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdisk_chopper/slit_height">
      <sch:rule context="//nx:NXdisk_chopper/nx:slit_height"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'slit_height'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdisk_chopper/phase">
      <sch:rule context="//nx:NXdisk_chopper/nx:phase"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'phase'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdisk_chopper/ratio">
      <sch:rule context="//nx:NXdisk_chopper/nx:ratio"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'ratio'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdisk_chopper/distance">
      <sch:rule context="//nx:NXdisk_chopper/nx:distance"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'distance'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdisk_chopper/wavelength_range">
      <sch:rule context="//nx:NXdisk_chopper/nx:wavelength_range"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'wavelength_range'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   



<sch:pattern fpi="definition: NXvelocity_selector fields">
      <sch:rule context="//nx:NXvelocity_selector/*[count(child::*) = 0]">
         <sch:let name="fields" value="('type','rotation_speed','radius','spwidth','length','num','twist','table','height','width','wavelength','wavelength_spread')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXvelocity_selector groups">
      <sch:rule context="//nx:NXvelocity_selector/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXvelocity_selector/type">
      <sch:rule context="//nx:NXvelocity_selector/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXvelocity_selector/rotation_speed">
      <sch:rule context="//nx:NXvelocity_selector/nx:rotation_speed"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'rotation_speed'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXvelocity_selector/radius">
      <sch:rule context="//nx:NXvelocity_selector/nx:radius"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'radius'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXvelocity_selector/spwidth">
      <sch:rule context="//nx:NXvelocity_selector/nx:spwidth"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'spwidth'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXvelocity_selector/length">
      <sch:rule context="//nx:NXvelocity_selector/nx:length"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'length'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXvelocity_selector/num">
      <sch:rule context="//nx:NXvelocity_selector/nx:num"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'num'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXvelocity_selector/twist">
      <sch:rule context="//nx:NXvelocity_selector/nx:twist"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'twist'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXvelocity_selector/table">
      <sch:rule context="//nx:NXvelocity_selector/nx:table"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'table'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXvelocity_selector/height">
      <sch:rule context="//nx:NXvelocity_selector/nx:height"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'height'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXvelocity_selector/width">
      <sch:rule context="//nx:NXvelocity_selector/nx:width"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'width'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXvelocity_selector/wavelength">
      <sch:rule context="//nx:NXvelocity_selector/nx:wavelength"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'wavelength'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXvelocity_selector/wavelength_spread">
      <sch:rule context="//nx:NXvelocity_selector/nx:wavelength_spread"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'wavelength_spread'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   




<sch:pattern fpi="definition: NXflipper fields">
      <sch:rule context="//nx:NXflipper/*[count(child::*) = 0]">
         <sch:let name="fields" value="('type','flip_turns','comp_turns','guide_turns','flip_current','comp_current','guide_current','thickness')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXflipper groups">
      <sch:rule context="//nx:NXflipper/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXflipper/type">
      <sch:rule context="//nx:NXflipper/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXflipper/type_enumeration"><sch:rule context="//nx:NXflipper/nx:type">
         <sch:let name="enumeration" value="('coil','current-sheet')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXflipper/flip_turns">
      <sch:rule context="//nx:NXflipper/nx:flip_turns"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'flip_turns'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXflipper/comp_turns">
      <sch:rule context="//nx:NXflipper/nx:comp_turns"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'comp_turns'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXflipper/guide_turns">
      <sch:rule context="//nx:NXflipper/nx:guide_turns"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'guide_turns'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXflipper/flip_current">
      <sch:rule context="//nx:NXflipper/nx:flip_current"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'flip_current'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXflipper/comp_current">
      <sch:rule context="//nx:NXflipper/nx:comp_current"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'comp_current'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXflipper/guide_current">
      <sch:rule context="//nx:NXflipper/nx:guide_current"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'guide_current'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXflipper/thickness">
      <sch:rule context="//nx:NXflipper/nx:thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>




   <sch:pattern fpi="definition: NXevent_data fields">
      <sch:rule context="//nx:NXevent_data/*[count(child::*) = 0]">
         <sch:let name="fields" value="('time_of_flight','pixel_number','pulse_time','events_per_pulse','pulse_height')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXevent_data groups">
      <sch:rule context="//nx:NXevent_data/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXevent_data/time_of_flight">
      <sch:rule context="//nx:NXevent_data/nx:time_of_flight"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'time_of_flight'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXevent_data/pixel_number">
      <sch:rule context="//nx:NXevent_data/nx:pixel_number"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'pixel_number'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXevent_data/pulse_time">
      <sch:rule context="//nx:NXevent_data/nx:pulse_time"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'pulse_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXevent_data/events_per_pulse">
      <sch:rule context="//nx:NXevent_data/nx:events_per_pulse"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'events_per_pulse'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXevent_data/pulse_height">
      <sch:rule context="//nx:NXevent_data/nx:pulse_height"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'pulse_height'
                </sch:assert>
      </sch:rule>
   </sch:pattern>




   <sch:pattern fpi="definition: NXpositioner fields">
      <sch:rule context="//nx:NXpositioner/*[count(child::*) = 0]">
         <sch:let name="fields" value="('name','description','value','raw_value','target_value','tolerance','soft_limit_min','soft_limit_max','velocity','acceleration_time','controller_record')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXpositioner groups">
      <sch:rule context="//nx:NXpositioner/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpositioner/name">
      <sch:rule context="//nx:NXpositioner/nx:name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpositioner/description">
      <sch:rule context="//nx:NXpositioner/nx:description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpositioner/value">
      <sch:rule context="//nx:NXpositioner/nx:value"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpositioner/raw_value">
      <sch:rule context="//nx:NXpositioner/nx:raw_value"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'raw_value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpositioner/target_value">
      <sch:rule context="//nx:NXpositioner/nx:target_value"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'target_value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpositioner/tolerance">
      <sch:rule context="//nx:NXpositioner/nx:tolerance"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'tolerance'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpositioner/soft_limit_min">
      <sch:rule context="//nx:NXpositioner/nx:soft_limit_min"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'soft_limit_min'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpositioner/soft_limit_max">
      <sch:rule context="//nx:NXpositioner/nx:soft_limit_max"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'soft_limit_max'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpositioner/velocity">
      <sch:rule context="//nx:NXpositioner/nx:velocity"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'velocity'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpositioner/acceleration_time">
      <sch:rule context="//nx:NXpositioner/nx:acceleration_time"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'acceleration_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpositioner/controller_record">
      <sch:rule context="//nx:NXpositioner/nx:controller_record"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'controller_record'
                </sch:assert>
      </sch:rule>
   </sch:pattern>


   
   
   
   
   
   
   
   
   

   <sch:pattern fpi="definition: NXsource fields">
      <sch:rule context="//nx:NXsource/*[count(child::*) = 0]">
         <sch:let name="fields" value="('distance','name','type','probe','power','emittance_x','emittance_y','sigma_x','sigma_y','flux','energy','current','voltage','frequency','period','target_material','number_of_bunches','bunch_length','bunch_distance','pulse_width','mode','top_up','last_fill')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXsource groups">
      <sch:rule context="//nx:NXsource/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXnote','NXdata','NXdata','NXgeometry','NXdata')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/distance">
      <sch:rule context="//nx:NXsource/nx:distance"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'distance'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/name">
      <sch:rule context="//nx:NXsource/nx:name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/type">
      <sch:rule context="//nx:NXsource/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXsource/type_enumeration"><sch:rule context="//nx:NXsource/nx:type">
         <sch:let name="enumeration" value="('Spallation Neutron Source','Pulsed Reactor Neutron Source','Pulsed Neutron Source','Reactor Neutron Source','Synchrotron X-ray Source','Pulsed Muon Source','Rotating Anode X-ray','Fixed Tube X-ray','UV Laser','Free-Electron Laser','Optical Laser','Ion Source','UV Plasma Source')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/probe">
      <sch:rule context="//nx:NXsource/nx:probe"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'probe'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXsource/probe_enumeration"><sch:rule context="//nx:NXsource/nx:probe">
         <sch:let name="enumeration" value="('neutron','neutrons','x-ray','muon','electron','ultraviolet','visible light','positron','proton')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/power">
      <sch:rule context="//nx:NXsource/nx:power"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'power'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/emittance_x">
      <sch:rule context="//nx:NXsource/nx:emittance_x"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'emittance_x'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/emittance_y">
      <sch:rule context="//nx:NXsource/nx:emittance_y"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'emittance_y'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/sigma_x">
      <sch:rule context="//nx:NXsource/nx:sigma_x"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'sigma_x'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/sigma_y">
      <sch:rule context="//nx:NXsource/nx:sigma_y"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'sigma_y'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/flux">
      <sch:rule context="//nx:NXsource/nx:flux"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'flux'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/energy">
      <sch:rule context="//nx:NXsource/nx:energy"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'energy'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/current">
      <sch:rule context="//nx:NXsource/nx:current"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'current'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/voltage">
      <sch:rule context="//nx:NXsource/nx:voltage"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'voltage'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/frequency">
      <sch:rule context="//nx:NXsource/nx:frequency"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'frequency'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/period">
      <sch:rule context="//nx:NXsource/nx:period"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'period'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/target_material">
      <sch:rule context="//nx:NXsource/nx:target_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'target_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXsource/target_material_enumeration"><sch:rule context="//nx:NXsource/nx:target_material">
         <sch:let name="enumeration" value="('Ta','W','depleted_U','enriched_U','Hg','Pb','C')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXsource/nx:NXdata[@name='bunch_pattern']/title">
      <sch:rule context="//nx:NXsource/nx:NXdata[@name='bunch_pattern']/nx:title"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'title'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/number_of_bunches">
      <sch:rule context="//nx:NXsource/nx:number_of_bunches"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'number_of_bunches'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/bunch_length">
      <sch:rule context="//nx:NXsource/nx:bunch_length"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'bunch_length'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/bunch_distance">
      <sch:rule context="//nx:NXsource/nx:bunch_distance"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'bunch_distance'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/pulse_width">
      <sch:rule context="//nx:NXsource/nx:pulse_width"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'pulse_width'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXsource/mode">
      <sch:rule context="//nx:NXsource/nx:mode"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'mode'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXsource/mode_enumeration"><sch:rule context="//nx:NXsource/nx:mode">
         <sch:let name="enumeration" value="('Single Bunch','Multi Bunch')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/top_up">
      <sch:rule context="//nx:NXsource/nx:top_up"><sch:assert test="count(index-of(('NX_BOOLEAN'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_BOOLEAN') for 'top_up'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsource/last_fill">
      <sch:rule context="//nx:NXsource/nx:last_fill"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'last_fill'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   



<sch:pattern fpi="definition: NXnote fields">
      <sch:rule context="//nx:NXnote/*[count(child::*) = 0]">
         <sch:let name="fields" value="('author','date','type','file_name','description','data')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXnote groups">
      <sch:rule context="//nx:NXnote/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXnote/author">
      <sch:rule context="//nx:NXnote/nx:author"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'author'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXnote/date">
      <sch:rule context="//nx:NXnote/nx:date"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'date'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXnote/type">
      <sch:rule context="//nx:NXnote/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXnote/file_name">
      <sch:rule context="//nx:NXnote/nx:file_name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'file_name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXnote/description">
      <sch:rule context="//nx:NXnote/nx:description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXnote/data">
      <sch:rule context="//nx:NXnote/nx:data"><sch:assert test="count(index-of(('NX_BINARY'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_BINARY') for 'data'
                </sch:assert>
      </sch:rule>
   </sch:pattern>



   <sch:pattern fpi="definition: NXparameters fields">
      <sch:rule context="//nx:NXparameters/*[count(child::*) = 0]">
         <sch:let name="fields" value="('term')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXparameters groups">
      <sch:rule context="//nx:NXparameters/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXparameters/term">
      <sch:rule context="//nx:NXparameters/nx:term"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'term'
                </sch:assert>
      </sch:rule>
   </sch:pattern>




   <sch:pattern fpi="definition: NXcollection fields">
      <sch:rule context="//nx:NXcollection/*[count(child::*) = 0]">
         <sch:let name="fields" value="('beamline')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXcollection groups">
      <sch:rule context="//nx:NXcollection/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcollection/beamline">
      <sch:rule context="//nx:NXcollection/nx:beamline"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'beamline'
                </sch:assert>
      </sch:rule>
   </sch:pattern>




   <sch:pattern fpi="definition: NXsubentry fields">
      <sch:rule context="//nx:NXsubentry/*[count(child::*) = 0]">
         <sch:let name="fields" value="('title','experiment_identifier','experiment_description','collection_identifier','collection_description','entry_identifier','definition','definition_local','start_time','end_time','duration','collection_time','run_cycle','program_name','revision','pre_sample_flightpath')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXsubentry groups">
      <sch:rule context="//nx:NXsubentry/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXnote','NXnote','NXnote','NXcharacterization','NXuser','NXsample','NXinstrument','NXmonitor','NXdata','NXprocess')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/title">
      <sch:rule context="//nx:NXsubentry/nx:title"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'title'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/experiment_identifier">
      <sch:rule context="//nx:NXsubentry/nx:experiment_identifier"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'experiment_identifier'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/experiment_description">
      <sch:rule context="//nx:NXsubentry/nx:experiment_description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'experiment_description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXsubentry/collection_identifier">
      <sch:rule context="//nx:NXsubentry/nx:collection_identifier"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'collection_identifier'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/collection_description">
      <sch:rule context="//nx:NXsubentry/nx:collection_description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'collection_description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/entry_identifier">
      <sch:rule context="//nx:NXsubentry/nx:entry_identifier"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'entry_identifier'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/definition">
      <sch:rule context="//nx:NXsubentry/nx:definition"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'definition'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/definition_local">
      <sch:rule context="//nx:NXsubentry/nx:definition_local"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'definition_local'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/start_time">
      <sch:rule context="//nx:NXsubentry/nx:start_time"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'start_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/end_time">
      <sch:rule context="//nx:NXsubentry/nx:end_time"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'end_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/duration">
      <sch:rule context="//nx:NXsubentry/nx:duration"><sch:assert test="count(index-of(('NX_FLOAT32','NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'duration'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/collection_time">
      <sch:rule context="//nx:NXsubentry/nx:collection_time"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'collection_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/run_cycle">
      <sch:rule context="//nx:NXsubentry/nx:run_cycle"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'run_cycle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/program_name">
      <sch:rule context="//nx:NXsubentry/nx:program_name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'program_name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/revision">
      <sch:rule context="//nx:NXsubentry/nx:revision"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'revision'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsubentry/pre_sample_flightpath">
      <sch:rule context="//nx:NXsubentry/nx:pre_sample_flightpath"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'pre_sample_flightpath'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   




<sch:pattern fpi="definition: NXmirror fields">
      <sch:rule context="//nx:NXmirror/*[count(child::*) = 0]">
         <sch:let name="fields" value="('type','description','incident_angle','bend_angle_x','bend_angle_y','interior_atmosphere','external_material','m_value','substrate_material','substrate_density','substrate_thickness','coating_material','substrate_roughness','coating_roughness','even_layer_material','even_layer_density','odd_layer_material','odd_layer_density','layer_thickness')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXmirror groups">
      <sch:rule context="//nx:NXmirror/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry','NXdata','NXshape','NXdata')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXmirror/type">
      <sch:rule context="//nx:NXmirror/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXmirror/type_enumeration"><sch:rule context="//nx:NXmirror/nx:type">
         <sch:let name="enumeration" value="('single','multi')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/description">
      <sch:rule context="//nx:NXmirror/nx:description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/incident_angle">
      <sch:rule context="//nx:NXmirror/nx:incident_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'incident_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXmirror/bend_angle_x">
      <sch:rule context="//nx:NXmirror/nx:bend_angle_x"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'bend_angle_x'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/bend_angle_y">
      <sch:rule context="//nx:NXmirror/nx:bend_angle_y"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'bend_angle_y'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/interior_atmosphere">
      <sch:rule context="//nx:NXmirror/nx:interior_atmosphere"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'interior_atmosphere'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXmirror/interior_atmosphere_enumeration"><sch:rule context="//nx:NXmirror/nx:interior_atmosphere">
         <sch:let name="enumeration" value="('vacuum','helium','argon')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/external_material">
      <sch:rule context="//nx:NXmirror/nx:external_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'external_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/m_value">
      <sch:rule context="//nx:NXmirror/nx:m_value"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'm_value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/substrate_material">
      <sch:rule context="//nx:NXmirror/nx:substrate_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'substrate_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/substrate_density">
      <sch:rule context="//nx:NXmirror/nx:substrate_density"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'substrate_density'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/substrate_thickness">
      <sch:rule context="//nx:NXmirror/nx:substrate_thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'substrate_thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/coating_material">
      <sch:rule context="//nx:NXmirror/nx:coating_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'coating_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/substrate_roughness">
      <sch:rule context="//nx:NXmirror/nx:substrate_roughness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'substrate_roughness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/coating_roughness">
      <sch:rule context="//nx:NXmirror/nx:coating_roughness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'coating_roughness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/even_layer_material">
      <sch:rule context="//nx:NXmirror/nx:even_layer_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'even_layer_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/even_layer_density">
      <sch:rule context="//nx:NXmirror/nx:even_layer_density"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'even_layer_density'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/odd_layer_material">
      <sch:rule context="//nx:NXmirror/nx:odd_layer_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'odd_layer_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/odd_layer_density">
      <sch:rule context="//nx:NXmirror/nx:odd_layer_density"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'odd_layer_density'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmirror/layer_thickness">
      <sch:rule context="//nx:NXmirror/nx:layer_thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'layer_thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   




<sch:pattern fpi="definition: NXinstrument fields">
      <sch:rule context="//nx:NXinstrument/*[count(child::*) = 0]">
         <sch:let name="fields" value="('name')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXinstrument groups">
      <sch:rule context="//nx:NXinstrument/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXdata','IXdae','NXaperture','NXattenuator','NXbeam','NXbeam_stop','NXbending_magnet','NXcollimator','NXcrystal','NXdetector','NXdisk_chopper','NXfermi_chopper','NXfilter','NXflipper','NXguide','NXinsertion_device','NXmirror','NXmoderator','NXpolarizer','NXsource','NXvelocity_selector')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinstrument/name">
      <sch:rule context="//nx:NXinstrument/nx:name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>

<sch:pattern fpi="definition: NXobject fields">
      <sch:rule context="//nx:NXobject/*[count(child::*) = 0]">
         <sch:let name="fields" value="()"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXobject groups">
      <sch:rule context="//nx:NXobject/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>




   <sch:pattern fpi="definition: NXattenuator fields">
      <sch:rule context="//nx:NXattenuator/*[count(child::*) = 0]">
         <sch:let name="fields" value="('distance','type','thickness','scattering_cross_section','absorption_cross_section','attenuator_transmission','status')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXattenuator groups">
      <sch:rule context="//nx:NXattenuator/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXattenuator/distance">
      <sch:rule context="//nx:NXattenuator/nx:distance"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'distance'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXattenuator/type">
      <sch:rule context="//nx:NXattenuator/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXattenuator/thickness">
      <sch:rule context="//nx:NXattenuator/nx:thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXattenuator/scattering_cross_section">
      <sch:rule context="//nx:NXattenuator/nx:scattering_cross_section"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'scattering_cross_section'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXattenuator/absorption_cross_section">
      <sch:rule context="//nx:NXattenuator/nx:absorption_cross_section"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'absorption_cross_section'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXattenuator/attenuator_transmission">
      <sch:rule context="//nx:NXattenuator/nx:attenuator_transmission"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'attenuator_transmission'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXattenuator/status">
      <sch:rule context="//nx:NXattenuator/nx:status"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'status'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXattenuator/status_enumeration"><sch:rule context="//nx:NXattenuator/nx:status">
         <sch:let name="enumeration" value="('in','out','moving')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>



   <sch:pattern fpi="definition: NXpolarizer fields">
      <sch:rule context="//nx:NXpolarizer/*[count(child::*) = 0]">
         <sch:let name="fields" value="('type','composition','reflection','efficiency')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXpolarizer groups">
      <sch:rule context="//nx:NXpolarizer/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpolarizer/type">
      <sch:rule context="//nx:NXpolarizer/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpolarizer/composition">
      <sch:rule context="//nx:NXpolarizer/nx:composition"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'composition'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpolarizer/reflection">
      <sch:rule context="//nx:NXpolarizer/nx:reflection"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'reflection'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXpolarizer/efficiency">
      <sch:rule context="//nx:NXpolarizer/nx:efficiency"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'efficiency'
                </sch:assert>
      </sch:rule>
   </sch:pattern>




   <sch:pattern fpi="definition: NXmonitor fields">
      <sch:rule context="//nx:NXmonitor/*[count(child::*) = 0]">
         <sch:let name="fields" value="('monitor_number','spectrum_index','NAPIlink','mode','start_time','end_time','preset','distance','range','integral','type','time_of_flight','efficiency','data','sampled_fraction','count_time')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXmonitor groups">
      <sch:rule context="//nx:NXmonitor/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXlog','NXgeometry')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonitor/mode">
      <sch:rule context="//nx:NXmonitor/nx:mode"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'mode'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXmonitor/mode_enumeration"><sch:rule context="//nx:NXmonitor/nx:mode">
         <sch:let name="enumeration" value="('monitor','timer')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonitor/start_time">
      <sch:rule context="//nx:NXmonitor/nx:start_time"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'start_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonitor/end_time">
      <sch:rule context="//nx:NXmonitor/nx:end_time"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'end_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonitor/preset">
      <sch:rule context="//nx:NXmonitor/nx:preset"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'preset'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonitor/distance">
      <sch:rule context="//nx:NXmonitor/nx:distance"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'distance'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonitor/range">
      <sch:rule context="//nx:NXmonitor/nx:range"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'range'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonitor/integral">
      <sch:rule context="//nx:NXmonitor/nx:integral"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'integral'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXmonitor/type">
      <sch:rule context="//nx:NXmonitor/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXmonitor/type_enumeration"><sch:rule context="//nx:NXmonitor/nx:type">
         <sch:let name="enumeration" value="('Fission Chamber','Scintillator')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonitor/time_of_flight">
      <sch:rule context="//nx:NXmonitor/nx:time_of_flight"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'time_of_flight'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonitor/efficiency">
      <sch:rule context="//nx:NXmonitor/nx:efficiency"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'efficiency'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonitor/data">
      <sch:rule context="//nx:NXmonitor/nx:data"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'data'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonitor/sampled_fraction">
      <sch:rule context="//nx:NXmonitor/nx:sampled_fraction"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'sampled_fraction'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXmonitor/count_time">
      <sch:rule context="//nx:NXmonitor/nx:count_time"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'count_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>



   <sch:pattern fpi="definition: NXbeam_stop fields">
      <sch:rule context="//nx:NXbeam_stop/*[count(child::*) = 0]">
         <sch:let name="fields" value="('description','size','x','y','distance_to_detector','status')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXbeam_stop groups">
      <sch:rule context="//nx:NXbeam_stop/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXbeam_stop/description">
      <sch:rule context="//nx:NXbeam_stop/nx:description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXbeam_stop/description_enumeration"><sch:rule context="//nx:NXbeam_stop/nx:description">
         <sch:let name="enumeration" value="('circular','rectangular')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam_stop/size">
      <sch:rule context="//nx:NXbeam_stop/nx:size"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'size'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam_stop/x">
      <sch:rule context="//nx:NXbeam_stop/nx:x"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'x'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam_stop/y">
      <sch:rule context="//nx:NXbeam_stop/nx:y"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'y'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam_stop/distance_to_detector">
      <sch:rule context="//nx:NXbeam_stop/nx:distance_to_detector"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'distance_to_detector'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXbeam_stop/status">
      <sch:rule context="//nx:NXbeam_stop/nx:status"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'status'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXbeam_stop/status_enumeration"><sch:rule context="//nx:NXbeam_stop/nx:status">
         <sch:let name="enumeration" value="('in','out')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>


   
   <sch:pattern fpi="definition: NXfermi_chopper fields">
      <sch:rule context="//nx:NXfermi_chopper/*[count(child::*) = 0]">
         <sch:let name="fields" value="('type','rotation_speed','radius','slit','r_slit','number','height','width','distance','wavelength','energy','absorbing_material','transmitting_material')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXfermi_chopper groups">
      <sch:rule context="//nx:NXfermi_chopper/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfermi_chopper/type">
      <sch:rule context="//nx:NXfermi_chopper/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfermi_chopper/rotation_speed">
      <sch:rule context="//nx:NXfermi_chopper/nx:rotation_speed"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'rotation_speed'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfermi_chopper/radius">
      <sch:rule context="//nx:NXfermi_chopper/nx:radius"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'radius'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfermi_chopper/slit">
      <sch:rule context="//nx:NXfermi_chopper/nx:slit"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'slit'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfermi_chopper/r_slit">
      <sch:rule context="//nx:NXfermi_chopper/nx:r_slit"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'r_slit'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfermi_chopper/number">
      <sch:rule context="//nx:NXfermi_chopper/nx:number"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'number'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfermi_chopper/height">
      <sch:rule context="//nx:NXfermi_chopper/nx:height"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'height'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfermi_chopper/width">
      <sch:rule context="//nx:NXfermi_chopper/nx:width"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'width'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfermi_chopper/distance">
      <sch:rule context="//nx:NXfermi_chopper/nx:distance"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'distance'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfermi_chopper/wavelength">
      <sch:rule context="//nx:NXfermi_chopper/nx:wavelength"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'wavelength'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfermi_chopper/energy">
      <sch:rule context="//nx:NXfermi_chopper/nx:energy"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'energy'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXfermi_chopper/absorbing_material">
      <sch:rule context="//nx:NXfermi_chopper/nx:absorbing_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'absorbing_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXfermi_chopper/transmitting_material">
      <sch:rule context="//nx:NXfermi_chopper/nx:transmitting_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'transmitting_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>




   <sch:pattern fpi="definition: NXdetector_group fields">
      <sch:rule context="//nx:NXdetector_group/*[count(child::*) = 0]">
         <sch:let name="fields" value="('group_names','group_index','group_parent','group_type')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXdetector_group groups">
      <sch:rule context="//nx:NXdetector_group/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector_group/group_names">
      <sch:rule context="//nx:NXdetector_group/nx:group_names"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'group_names'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector_group/group_index">
      <sch:rule context="//nx:NXdetector_group/nx:group_index"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'group_index'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector_group/group_parent">
      <sch:rule context="//nx:NXdetector_group/nx:group_parent"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'group_parent'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector_group/group_type">
      <sch:rule context="//nx:NXdetector_group/nx:group_type"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'group_type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>



   <sch:pattern fpi="definition: NXaperture fields">
      <sch:rule context="//nx:NXaperture/*[count(child::*) = 0]">
         <sch:let name="fields" value="('material','description')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXaperture groups">
      <sch:rule context="//nx:NXaperture/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry','NXgeometry','NXnote')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXaperture/material">
      <sch:rule context="//nx:NXaperture/nx:material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXaperture/description">
      <sch:rule context="//nx:NXaperture/nx:description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   



<sch:pattern fpi="definition: NXtranslation fields">
      <sch:rule context="//nx:NXtranslation/*[count(child::*) = 0]">
         <sch:let name="fields" value="('distances')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXtranslation groups">
      <sch:rule context="//nx:NXtranslation/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXtranslation/distances">
      <sch:rule context="//nx:NXtranslation/nx:distances"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'distances'
                </sch:assert>
      </sch:rule>
   </sch:pattern>




   <sch:pattern fpi="definition: NXprocess fields">
      <sch:rule context="//nx:NXprocess/*[count(child::*) = 0]">
         <sch:let name="fields" value="('program','version','date')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXprocess groups">
      <sch:rule context="//nx:NXprocess/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXnote')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXprocess/program">
      <sch:rule context="//nx:NXprocess/nx:program"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'program'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXprocess/version">
      <sch:rule context="//nx:NXprocess/nx:version"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'version'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXprocess/date">
      <sch:rule context="//nx:NXprocess/nx:date"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'date'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   




<sch:pattern fpi="definition: NXinsertion_device fields">
      <sch:rule context="//nx:NXinsertion_device/*[count(child::*) = 0]">
         <sch:let name="fields" value="('type','gap','taper','phase','poles','magnetic_wavelength','k','length','power','energy','bandwidth','harmonic')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXinsertion_device groups">
      <sch:rule context="//nx:NXinsertion_device/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXdata','NXgeometry')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinsertion_device/type">
      <sch:rule context="//nx:NXinsertion_device/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXinsertion_device/type_enumeration"><sch:rule context="//nx:NXinsertion_device/nx:type">
         <sch:let name="enumeration" value="('undulator','wiggler')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinsertion_device/gap">
      <sch:rule context="//nx:NXinsertion_device/nx:gap"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'gap'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinsertion_device/taper">
      <sch:rule context="//nx:NXinsertion_device/nx:taper"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'taper'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinsertion_device/phase">
      <sch:rule context="//nx:NXinsertion_device/nx:phase"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'phase'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinsertion_device/poles">
      <sch:rule context="//nx:NXinsertion_device/nx:poles"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'poles'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinsertion_device/magnetic_wavelength">
      <sch:rule context="//nx:NXinsertion_device/nx:magnetic_wavelength"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'magnetic_wavelength'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinsertion_device/k">
      <sch:rule context="//nx:NXinsertion_device/nx:k"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'k'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinsertion_device/length">
      <sch:rule context="//nx:NXinsertion_device/nx:length"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'length'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinsertion_device/power">
      <sch:rule context="//nx:NXinsertion_device/nx:power"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'power'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinsertion_device/energy">
      <sch:rule context="//nx:NXinsertion_device/nx:energy"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'energy'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinsertion_device/bandwidth">
      <sch:rule context="//nx:NXinsertion_device/nx:bandwidth"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'bandwidth'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXinsertion_device/harmonic">
      <sch:rule context="//nx:NXinsertion_device/nx:harmonic"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'harmonic'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   




<sch:pattern fpi="definition: NXcharacterization fields">
      <sch:rule context="//nx:NXcharacterization/*[count(child::*) = 0]">
         <sch:let name="fields" value="('definition')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXcharacterization groups">
      <sch:rule context="//nx:NXcharacterization/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcharacterization/definition">
      <sch:rule context="//nx:NXcharacterization/nx:definition"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'definition'
                </sch:assert>
      </sch:rule>
   </sch:pattern>



   <sch:pattern fpi="definition: NXsample fields">
      <sch:rule context="//nx:NXsample/*[count(child::*) = 0]">
         <sch:let name="fields" value="('height','id','shape','width','name','chemical_formula','temperature','electric_field','magnetic_field','stress_field','pressure','changer_position','unit_cell','unit_cell_volume','sample_orientation','orientation_matrix','mass','density','relative_molecular_mass','type','situation','description','preparation_date','component','sample_component','concentration','volume_fraction','scattering_length_density','unit_cell_class','unit_cell_group','path_length','path_length_window','thickness','external_DAC','short_title','rotation_angle','x_translation','distance')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXsample groups">
      <sch:rule context="//nx:NXsample/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry','NXbeam','NXdata','NXlog','NXenvironment','NXlog','NXenvironment','NXlog')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/name">
      <sch:rule context="//nx:NXsample/nx:name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/chemical_formula">
      <sch:rule context="//nx:NXsample/nx:chemical_formula"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'chemical_formula'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/temperature">
      <sch:rule context="//nx:NXsample/nx:temperature"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'temperature'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/electric_field">
      <sch:rule context="//nx:NXsample/nx:electric_field"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'electric_field'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/magnetic_field">
      <sch:rule context="//nx:NXsample/nx:magnetic_field"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'magnetic_field'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/stress_field">
      <sch:rule context="//nx:NXsample/nx:stress_field"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'stress_field'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/pressure">
      <sch:rule context="//nx:NXsample/nx:pressure"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'pressure'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/changer_position">
      <sch:rule context="//nx:NXsample/nx:changer_position"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'changer_position'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/unit_cell">
      <sch:rule context="//nx:NXsample/nx:unit_cell"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/unit_cell_volume">
      <sch:rule context="//nx:NXsample/nx:unit_cell_volume"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'unit_cell_volume'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/sample_orientation">
      <sch:rule context="//nx:NXsample/nx:sample_orientation"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'sample_orientation'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/orientation_matrix">
      <sch:rule context="//nx:NXsample/nx:orientation_matrix"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'orientation_matrix'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/mass">
      <sch:rule context="//nx:NXsample/nx:mass"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'mass'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/density">
      <sch:rule context="//nx:NXsample/nx:density"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'density'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/relative_molecular_mass">
      <sch:rule context="//nx:NXsample/nx:relative_molecular_mass"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'relative_molecular_mass'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/type">
      <sch:rule context="//nx:NXsample/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXsample/type_enumeration"><sch:rule context="//nx:NXsample/nx:type">
         <sch:let name="enumeration" value="('sample','sample+can','can','calibration sample','normalisation sample','simulated data','none','sample environment')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/situation">
      <sch:rule context="//nx:NXsample/nx:situation"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'situation'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXsample/situation_enumeration"><sch:rule context="//nx:NXsample/nx:situation">
         <sch:let name="enumeration" value="('air','vacuum','inert atmosphere','oxidising atmosphere','reducing atmosphere','sealed can','other')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/description">
      <sch:rule context="//nx:NXsample/nx:description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/preparation_date">
      <sch:rule context="//nx:NXsample/nx:preparation_date"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'preparation_date'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXsample/component">
      <sch:rule context="//nx:NXsample/nx:component"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'component'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/sample_component">
      <sch:rule context="//nx:NXsample/nx:sample_component"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'sample_component'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXsample/sample_component_enumeration"><sch:rule context="//nx:NXsample/nx:sample_component">
         <sch:let name="enumeration" value="('sample','can','atmosphere','kit')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/concentration">
      <sch:rule context="//nx:NXsample/nx:concentration"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'concentration'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/volume_fraction">
      <sch:rule context="//nx:NXsample/nx:volume_fraction"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'volume_fraction'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/scattering_length_density">
      <sch:rule context="//nx:NXsample/nx:scattering_length_density"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'scattering_length_density'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/unit_cell_class">
      <sch:rule context="//nx:NXsample/nx:unit_cell_class"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'unit_cell_class'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXsample/unit_cell_class_enumeration"><sch:rule context="//nx:NXsample/nx:unit_cell_class">
         <sch:let name="enumeration" value="('cubic','tetragonal','orthorhombic','monoclinic','triclinic')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/unit_cell_group">
      <sch:rule context="//nx:NXsample/nx:unit_cell_group"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'unit_cell_group'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/path_length">
      <sch:rule context="//nx:NXsample/nx:path_length"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'path_length'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/path_length_window">
      <sch:rule context="//nx:NXsample/nx:path_length_window"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'path_length_window'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/thickness">
      <sch:rule context="//nx:NXsample/nx:thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXsample/external_DAC">
      <sch:rule context="//nx:NXsample/nx:external_DAC"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'external_DAC'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXsample/short_title">
      <sch:rule context="//nx:NXsample/nx:short_title"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'short_title'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/rotation_angle">
      <sch:rule context="//nx:NXsample/nx:rotation_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'rotation_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/x_translation">
      <sch:rule context="//nx:NXsample/nx:x_translation"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'x_translation'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXsample/distance">
      <sch:rule context="//nx:NXsample/nx:distance"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'distance'
                </sch:assert>
      </sch:rule>
   </sch:pattern>




   <sch:pattern fpi="definition: NXgeometry fields">
      <sch:rule context="//nx:NXgeometry/*[count(child::*) = 0]">
         <sch:let name="fields" value="('description','component_index')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXgeometry groups">
      <sch:rule context="//nx:NXgeometry/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXshape','NXtranslation','NXorientation')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXgeometry/description">
      <sch:rule context="//nx:NXgeometry/nx:description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXgeometry/component_index">
      <sch:rule context="//nx:NXgeometry/nx:component_index"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'component_index'
                </sch:assert>
      </sch:rule>
   </sch:pattern>




   <sch:pattern fpi="definition: NXorientation fields">
      <sch:rule context="//nx:NXorientation/*[count(child::*) = 0]">
         <sch:let name="fields" value="('value')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXorientation groups">
      <sch:rule context="//nx:NXorientation/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXorientation/value">
      <sch:rule context="//nx:NXorientation/nx:value"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>


   
   <sch:pattern fpi="definition: NXcollimator fields">
      <sch:rule context="//nx:NXcollimator/*[count(child::*) = 0]">
         <sch:let name="fields" value="('type','soller_angle','divergence_x','divergence_y','frequency','blade_thickness','blade_spacing','absorbing_material','transmitting_material')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXcollimator groups">
      <sch:rule context="//nx:NXcollimator/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry','NXlog')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXcollimator/type">
      <sch:rule context="//nx:NXcollimator/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXcollimator/type_enumeration"><sch:rule context="//nx:NXcollimator/nx:type">
         <sch:let name="enumeration" value="('Soller','radial','oscillating','honeycomb')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcollimator/soller_angle">
      <sch:rule context="//nx:NXcollimator/nx:soller_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'soller_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcollimator/divergence_x">
      <sch:rule context="//nx:NXcollimator/nx:divergence_x"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'divergence_x'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcollimator/divergence_y">
      <sch:rule context="//nx:NXcollimator/nx:divergence_y"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'divergence_y'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcollimator/frequency">
      <sch:rule context="//nx:NXcollimator/nx:frequency"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'frequency'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXcollimator/blade_thickness">
      <sch:rule context="//nx:NXcollimator/nx:blade_thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'blade_thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcollimator/blade_spacing">
      <sch:rule context="//nx:NXcollimator/nx:blade_spacing"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'blade_spacing'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcollimator/absorbing_material">
      <sch:rule context="//nx:NXcollimator/nx:absorbing_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'absorbing_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXcollimator/transmitting_material">
      <sch:rule context="//nx:NXcollimator/nx:transmitting_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'transmitting_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>



   <sch:pattern fpi="definition: NXmonochromator fields">
      <sch:rule context="//nx:NXmonochromator/*[count(child::*) = 0]">
         <sch:let name="fields" value="('wavelength','wavelength_error','energy','energy_error')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXmonochromator groups">
      <sch:rule context="//nx:NXmonochromator/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXdata','NXgeometry','NXcrystal','NXvelocity_selector')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonochromator/wavelength">
      <sch:rule context="//nx:NXmonochromator/nx:wavelength"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'wavelength'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonochromator/wavelength_error">
      <sch:rule context="//nx:NXmonochromator/nx:wavelength_error"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'wavelength_error'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonochromator/energy">
      <sch:rule context="//nx:NXmonochromator/nx:energy"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'energy'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXmonochromator/energy_error">
      <sch:rule context="//nx:NXmonochromator/nx:energy_error"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'energy_error'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   




<sch:pattern fpi="definition: NXdetector fields">
      <sch:rule context="//nx:NXdetector/*[count(child::*) = 0]">
         <sch:let name="fields" value="('time_of_flight','raw_time_of_flight','detector_number','data','data_error','x_pixel_offset','y_pixel_offset','distance','polar_angle','azimuthal_angle','description','local_name','solid_angle','x_pixel_size','y_pixel_size','dead_time','gas_pressure','detection_gas_path','crate','slot','input','type','calibration_date','layout','count_time','sequence_number','beam_center_x','beam_center_y','frame_start_number','diameter','acquisition_mode','angular_calibration_applied','angular_calibration','flatfield_applied','flatfield','flatfield_error','pixel_mask_applied','pixel_mask','countrate_correction__applied','bit_depth_readout','detector_readout_time','trigger_delay_time','trigger_dead_time','frame_time','gain_setting','saturation_value','number_of_cycles','sensor_material','sensor_thickness','threshold_energy')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXdetector groups">
      <sch:rule context="//nx:NXdetector/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXgeometry','NXdata','NXnote','NXnote','NXcharacterization')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/time_of_flight">
      <sch:rule context="//nx:NXdetector/nx:time_of_flight"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'time_of_flight'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/raw_time_of_flight">
      <sch:rule context="//nx:NXdetector/nx:raw_time_of_flight"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'raw_time_of_flight'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/detector_number">
      <sch:rule context="//nx:NXdetector/nx:detector_number"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'detector_number'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/data">
      <sch:rule context="//nx:NXdetector/nx:data"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'data'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/data_error">
      <sch:rule context="//nx:NXdetector/nx:data_error"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'data_error'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/x_pixel_offset">
      <sch:rule context="//nx:NXdetector/nx:x_pixel_offset"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'x_pixel_offset'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/y_pixel_offset">
      <sch:rule context="//nx:NXdetector/nx:y_pixel_offset"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'y_pixel_offset'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/distance">
      <sch:rule context="//nx:NXdetector/nx:distance"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'distance'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/polar_angle">
      <sch:rule context="//nx:NXdetector/nx:polar_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'polar_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/azimuthal_angle">
      <sch:rule context="//nx:NXdetector/nx:azimuthal_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'azimuthal_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/description">
      <sch:rule context="//nx:NXdetector/nx:description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/local_name">
      <sch:rule context="//nx:NXdetector/nx:local_name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'local_name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXdetector/solid_angle">
      <sch:rule context="//nx:NXdetector/nx:solid_angle"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'solid_angle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/x_pixel_size">
      <sch:rule context="//nx:NXdetector/nx:x_pixel_size"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'x_pixel_size'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/y_pixel_size">
      <sch:rule context="//nx:NXdetector/nx:y_pixel_size"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'y_pixel_size'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/dead_time">
      <sch:rule context="//nx:NXdetector/nx:dead_time"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'dead_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/gas_pressure">
      <sch:rule context="//nx:NXdetector/nx:gas_pressure"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'gas_pressure'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/detection_gas_path">
      <sch:rule context="//nx:NXdetector/nx:detection_gas_path"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'detection_gas_path'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/crate">
      <sch:rule context="//nx:NXdetector/nx:crate"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'crate'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/slot">
      <sch:rule context="//nx:NXdetector/nx:slot"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'slot'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/input">
      <sch:rule context="//nx:NXdetector/nx:input"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'input'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/type">
      <sch:rule context="//nx:NXdetector/nx:type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXdetector/nx:NXdata[@name='efficiency']/efficiency">
      <sch:rule context="//nx:NXdetector/nx:NXdata[@name='efficiency']/nx:efficiency"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'efficiency'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/nx:NXdata[@name='efficiency']/wavelength">
      <sch:rule context="//nx:NXdetector/nx:NXdata[@name='efficiency']/nx:wavelength"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'wavelength'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/nx:NXdata[@name='efficiency']/real_time">
      <sch:rule context="//nx:NXdetector/nx:NXdata[@name='efficiency']/nx:real_time"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'real_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/calibration_date">
      <sch:rule context="//nx:NXdetector/nx:calibration_date"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'calibration_date'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXdetector/layout">
      <sch:rule context="//nx:NXdetector/nx:layout"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'layout'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXdetector/layout_enumeration"><sch:rule context="//nx:NXdetector/nx:layout">
         <sch:let name="enumeration" value="('point','linear','area')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/count_time">
      <sch:rule context="//nx:NXdetector/nx:count_time"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64','NX_FLOAT32','NX_FLOAT64') for 'count_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXdetector/sequence_number">
      <sch:rule context="//nx:NXdetector/nx:sequence_number"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'sequence_number'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/beam_center_x">
      <sch:rule context="//nx:NXdetector/nx:beam_center_x"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'beam_center_x'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/beam_center_y">
      <sch:rule context="//nx:NXdetector/nx:beam_center_y"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'beam_center_y'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/frame_start_number">
      <sch:rule context="//nx:NXdetector/nx:frame_start_number"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'frame_start_number'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/diameter">
      <sch:rule context="//nx:NXdetector/nx:diameter"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'diameter'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/acquisition_mode">
      <sch:rule context="//nx:NXdetector/nx:acquisition_mode"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'acquisition_mode'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXdetector/acquisition_mode_enumeration"><sch:rule context="//nx:NXdetector/nx:acquisition_mode">
         <sch:let name="enumeration" value="('gated','triggered','summed','event','histogrammed')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/angular_calibration_applied">
      <sch:rule context="//nx:NXdetector/nx:angular_calibration_applied"><sch:assert test="count(index-of(('NX_BOOLEAN'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_BOOLEAN') for 'angular_calibration_applied'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/angular_calibration">
      <sch:rule context="//nx:NXdetector/nx:angular_calibration"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'angular_calibration'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/flatfield_applied">
      <sch:rule context="//nx:NXdetector/nx:flatfield_applied"><sch:assert test="count(index-of(('NX_BOOLEAN'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_BOOLEAN') for 'flatfield_applied'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/flatfield">
      <sch:rule context="//nx:NXdetector/nx:flatfield"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'flatfield'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/flatfield_error">
      <sch:rule context="//nx:NXdetector/nx:flatfield_error"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'flatfield_error'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/pixel_mask_applied">
      <sch:rule context="//nx:NXdetector/nx:pixel_mask_applied"><sch:assert test="count(index-of(('NX_BOOLEAN'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_BOOLEAN') for 'pixel_mask_applied'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/pixel_mask">
      <sch:rule context="//nx:NXdetector/nx:pixel_mask"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'pixel_mask'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/countrate_correction__applied">
      <sch:rule context="//nx:NXdetector/nx:countrate_correction__applied"><sch:assert test="count(index-of(('NX_BOOLEAN'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_BOOLEAN') for 'countrate_correction__applied'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/bit_depth_readout">
      <sch:rule context="//nx:NXdetector/nx:bit_depth_readout"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'bit_depth_readout'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/detector_readout_time">
      <sch:rule context="//nx:NXdetector/nx:detector_readout_time"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'detector_readout_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/trigger_delay_time">
      <sch:rule context="//nx:NXdetector/nx:trigger_delay_time"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'trigger_delay_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/trigger_dead_time">
      <sch:rule context="//nx:NXdetector/nx:trigger_dead_time"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'trigger_dead_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/frame_time">
      <sch:rule context="//nx:NXdetector/nx:frame_time"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'frame_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/gain_setting">
      <sch:rule context="//nx:NXdetector/nx:gain_setting"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'gain_setting'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXdetector/gain_setting_enumeration"><sch:rule context="//nx:NXdetector/nx:gain_setting">
         <sch:let name="enumeration" value="('high','standard','fast','auto')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/saturation_value">
      <sch:rule context="//nx:NXdetector/nx:saturation_value"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'saturation_value'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/number_of_cycles">
      <sch:rule context="//nx:NXdetector/nx:number_of_cycles"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'number_of_cycles'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/sensor_material">
      <sch:rule context="//nx:NXdetector/nx:sensor_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'sensor_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/sensor_thickness">
      <sch:rule context="//nx:NXdetector/nx:sensor_thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'sensor_thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXdetector/threshold_energy">
      <sch:rule context="//nx:NXdetector/nx:threshold_energy"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'threshold_energy'
                </sch:assert>
      </sch:rule>
   </sch:pattern>



   <sch:pattern fpi="definition: NXxraylens fields">
      <sch:rule context="//nx:NXxraylens/*[count(child::*) = 0]">
         <sch:let name="fields" value="('lens_geometry','symmetric','cylindrical','focus_type','lens_thickness','lens_length','curvature','aperture','number_of_lenses','lens_material','gas','gas_pressure')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXxraylens groups">
      <sch:rule context="//nx:NXxraylens/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('NXnote')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXxraylens/lens_geometry">
      <sch:rule context="//nx:NXxraylens/nx:lens_geometry"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'lens_geometry'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXxraylens/lens_geometry_enumeration"><sch:rule context="//nx:NXxraylens/nx:lens_geometry">
         <sch:let name="enumeration" value="('paraboloid','spherical','elliptical','hyperbolical')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXxraylens/symmetric">
      <sch:rule context="//nx:NXxraylens/nx:symmetric"><sch:assert test="count(index-of(('NX_BOOLEAN'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_BOOLEAN') for 'symmetric'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXxraylens/cylindrical">
      <sch:rule context="//nx:NXxraylens/nx:cylindrical"><sch:assert test="count(index-of(('NX_BOOLEAN'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_BOOLEAN') for 'cylindrical'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXxraylens/focus_type">
      <sch:rule context="//nx:NXxraylens/nx:focus_type"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'focus_type'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXxraylens/focus_type_enumeration"><sch:rule context="//nx:NXxraylens/nx:focus_type">
         <sch:let name="enumeration" value="('line','point')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXxraylens/lens_thickness">
      <sch:rule context="//nx:NXxraylens/nx:lens_thickness"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'lens_thickness'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXxraylens/lens_length">
      <sch:rule context="//nx:NXxraylens/nx:lens_length"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'lens_length'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXxraylens/curvature">
      <sch:rule context="//nx:NXxraylens/nx:curvature"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'curvature'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXxraylens/aperture">
      <sch:rule context="//nx:NXxraylens/nx:aperture"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'aperture'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXxraylens/number_of_lenses">
      <sch:rule context="//nx:NXxraylens/nx:number_of_lenses"><sch:assert test="count(index-of(('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'number_of_lenses'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXxraylens/lens_material">
      <sch:rule context="//nx:NXxraylens/nx:lens_material"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'lens_material'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXxraylens/gas">
      <sch:rule context="//nx:NXxraylens/nx:gas"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'gas'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXxraylens/gas_pressure">
      <sch:rule context="//nx:NXxraylens/nx:gas_pressure"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'gas_pressure'
                </sch:assert>
      </sch:rule>
   </sch:pattern>



   <sch:pattern fpi="definition: NXentry fields">
      <sch:rule context="//nx:NXentry/*[count(child::*) = 0]">
         <sch:let name="fields" value="('name','notes','proton_charge','proton_charge_raw','beamline','good_frames','measurement_first_run','measurement_id','measurement_label','measurement_subid','measurement_type','raw_frames','run_number','title','experiment_identifier','experiment_description','collection_identifier','collection_description','entry_identifier','definition','definition_local','start_time','end_time','duration','collection_time','run_cycle','program_name','revision','pre_sample_flightpath')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXentry groups">
      <sch:rule context="//nx:NXentry/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="('IXselog','IXrunlog','IXvms','NXnote','NXnote','NXnote','NXcharacterization','NXuser','NXsample','NXinstrument','NXmonitor','NXdata','NXprocess','NXsubentry')"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/title">
      <sch:rule context="//nx:NXentry/nx:title"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'title'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/experiment_identifier">
      <sch:rule context="//nx:NXentry/nx:experiment_identifier"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'experiment_identifier'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/experiment_description">
      <sch:rule context="//nx:NXentry/nx:experiment_description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'experiment_description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   
        <sch:pattern fpi="nx:NXentry/collection_identifier">
      <sch:rule context="//nx:NXentry/nx:collection_identifier"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'collection_identifier'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/collection_description">
      <sch:rule context="//nx:NXentry/nx:collection_description"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'collection_description'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/entry_identifier">
      <sch:rule context="//nx:NXentry/nx:entry_identifier"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'entry_identifier'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/definition">
      <sch:rule context="//nx:NXentry/nx:definition"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'definition'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/definition_local">
      <sch:rule context="//nx:NXentry/nx:definition_local"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'definition_local'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/start_time">
      <sch:rule context="//nx:NXentry/nx:start_time"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'start_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/end_time">
      <sch:rule context="//nx:NXentry/nx:end_time"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'end_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/duration">
      <sch:rule context="//nx:NXentry/nx:duration"><sch:assert test="count(index-of(('NX_FLOAT32','NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_UINT8','NX_UINT16','NX_UINT32','NX_UINT64','NX_INT8','NX_INT16','NX_INT32','NX_INT64') for 'duration'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/collection_time">
      <sch:rule context="//nx:NXentry/nx:collection_time"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'collection_time'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/run_cycle">
      <sch:rule context="//nx:NXentry/nx:run_cycle"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'run_cycle'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/program_name">
      <sch:rule context="//nx:NXentry/nx:program_name"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'program_name'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/revision">
      <sch:rule context="//nx:NXentry/nx:revision"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'revision'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXentry/pre_sample_flightpath">
      <sch:rule context="//nx:NXentry/nx:pre_sample_flightpath"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'pre_sample_flightpath'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   




<sch:pattern fpi="definition: NXshape fields">
      <sch:rule context="//nx:NXshape/*[count(child::*) = 0]">
         <sch:let name="fields" value="('shape','size','direction')"/>
         <sch:report test="count(index-of($fields,name()))=0">                        
                        Non-standard field <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name()"/> in <sch:value-of xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nxdl="http://definition.nexusformat.org/nxdl/3.1" xmlns:nxsd="http://definition.nexusformat.org/schema/3.1" select="name(..)"/>
         </sch:report>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="definition: NXshape groups">
      <sch:rule context="//nx:NXshape/*[count(child::*) &gt; 0]">
         <sch:let name="group_types" value="()"/>
         <sch:report test="count(index-of($group_types,name()))=0">                        
                        Non-standard group in: 
                        <sch:value-of select="name()"/>[<sch:value-of select="@name"/>]
                      </sch:report>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXshape/shape">
      <sch:rule context="//nx:NXshape/nx:shape"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'shape'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXshape/shape_enumeration"><sch:rule context="//nx:NXshape/nx:shape">
         <sch:let name="enumeration" value="('nxflat','nxcylinder','nxbox','nxsphere','nxcone','nxelliptical','nxtoroidal','nxparabolic','nxpolynomial')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXshape/size">
      <sch:rule context="//nx:NXshape/nx:size"><sch:assert test="count(index-of(('NX_FLOAT32','NX_FLOAT64'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_FLOAT32','NX_FLOAT64') for 'size'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
        <sch:pattern fpi="nx:NXshape/direction">
      <sch:rule context="//nx:NXshape/nx:direction"><sch:assert test="count(index-of(('NX_CHAR'),tokenize(@NAPItype,'\[')[1] )) = 1">
                    NAPItype must be one of ('NX_CHAR') for 'direction'
                </sch:assert>
      </sch:rule>
   </sch:pattern>
   <sch:pattern fpi="nx:NXshape/direction_enumeration"><sch:rule context="//nx:NXshape/nx:direction">
         <sch:let name="enumeration" value="('concave','convex')"/>
         <sch:assert test="count(index-of($enumeration,.))=1">
                        type 
                        <sch:value-of select="."/>
                        must be one of 
                        <sch:value-of select="$enumeration"/>
         </sch:assert>
      </sch:rule>
   </sch:pattern>

   
   


</sch:schema>