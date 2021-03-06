<%--
 *
 *  Copyright 2011 - Sardegna Ricerche, Distretto ICT, Pula, Italy
 *
 * Licensed under the EUPL, Version 1.1.
 * You may not use this work except in compliance with the Licence.
 * You may obtain a copy of the Licence at:
 *
 *  http://www.osor.eu/eupl
 *
 * Unless required by applicable law or agreed to in  writing, software distributed under the Licence is distributed on an "AS IS" basis,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the Licence for the specific language governing permissions and limitations under the Licence.
 * In case of controversy the competent court is the Court of Cagliari (Italy).
--%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
										
	<label for=""><s:text name="facilities"/></label>					 
	  <s:iterator value="roomFacilities" var="each">
        <div class="facility">
          <span class="hov_edit"></span>
		  <img width="24" height="24"
		   src="resources/<s:property value="idStructure"/>/facilities/roomOrRoomType/<s:property value="#each.fileName"/>" 
		   alt="facility"/>
		  <s:checkbox id="%{#each.name}_fac" name="roomFacilitiesIds" value="roomFacilitiesIds.contains(#each.id)" fieldValue="%{#each.id}" label="%{#each.name}"/>
		</div>
	  </s:iterator>
	
	<!-- div facility for javascript purpose-->
	  <div class="facility" style="display: none; border-color: red;">
	    <span class="hov_edit"></span>
		<img  width="24" height="24"
		 src="resources/<s:property value="idStructure"/>/facilities/roomOrRoomType/"
		  alt="facility"/>
		<input type="checkbox" id="" name=""/>
		<label for=""></label>
	  </div>
	<!-- end div facility for javascript purpose-->