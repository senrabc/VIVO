<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->

<#-- List of research areas for the individual -->
<#assign researchAreas = propertyGroups.pullProperty("${core}hasResearchArea")!> 
<#assign concepts = propertyGroups.pullProperty("${core}hasAssociatedConcept")!> 
<#if concepts?has_content> concepts has content <#else> concepts dont have content</#if>
<h2>RESEARCH AREAS: ${core}hasResearchArea</h2>
<#if researchAreas?has_content> <#-- true when the property is in the list, even if not populated (when editing) -->
    <#assign localName = researchAreas.localName>
    <h2 id="${localName}" class="mainPropGroup">
        ${researchAreas.name?capitalize} 
        <img id="researchAreaIcon" src="${urls.images}/individual/research-group-icon.png" alt="${i18n().research_areas}" />
        <@p.addLink researchAreas editable /> <@p.verboseDisplay researchAreas />
    </h2>
    <ul id="individual-${localName}" role="list" >
        <@p.objectProperty researchAreas editable />
    </ul> <#else> Research areas does not have content
</#if>   
