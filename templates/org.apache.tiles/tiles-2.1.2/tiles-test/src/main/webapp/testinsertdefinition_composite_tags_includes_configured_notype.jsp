<%@ page session="false" %>
<%--
/*
 * $Id: testinsertdefinition_composite_tags_includes_configured_notype.jsp 573035 2007-09-05 19:27:22Z apetrelli $
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *
 */
--%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:definition name="test.inner.definition.tags" template="/layout.jsp">
    <tiles:putAttribute name="title"  value="This is an inner definition with tags."/>
    <tiles:putAttribute name="header" value="/header.jsp"/>
    <tiles:putAttribute name="body"   value="/body.jsp"/>
</tiles:definition>
<tiles:definition name="test.composite.definition.tags" template="/layout.jsp">
    <tiles:putAttribute name="title"  value="This is a composite definition with tags."/>
    <tiles:putAttribute name="header" value="/header.jsp"/>
    <tiles:putAttribute name="body"   value="test.inner.definition"/>
</tiles:definition>
<tiles:insertDefinition name="test.composite.definition.tags" />