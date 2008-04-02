<!--
 Copyright 2003 Sun Microsystems, Inc. All rights reserved.
 SUN PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
-->

<%@ page import="com.sun.faces.CustomerBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%

  // Construct a preconfigured customer list in session scope
  List list = (List)
    pageContext.getAttribute("ListBean", PageContext.SESSION_SCOPE);
  if (list == null) {
    list = new ArrayList();
    list.add(new CustomerBean("123456", "Alpha Beta Company", "ABC", 1234.56));
    list.add(new CustomerBean("445566", "General Services, Ltd.", "GS", 33.33));
    list.add(new CustomerBean("654321", "Summa Cum Laude, Inc.", "SCL", 76543.21));
    list.add(new CustomerBean("333333", "Yabba Dabba Doo", "YDD",  333.33));
    pageContext.setAttribute("ListBean", list,
                             PageContext.SESSION_SCOPE);
  }

%>

<HTML>
    <HEAD> <TITLE> JSF Basic Components Test Page </TITLE> </HEAD>

    <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
    <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

    <BODY>
        <H3> JSF Basic Components Test Page </H3>

<f:view>
<h:form formName="basicForm" id="basicForm" title="basicForm" formClass="formClass"
      accept="html,wml" >

  <TABLE BORDER="1">

      <tr>
         <td>
                 <h:panel_grid id="logonPanel1" columns="2"
                    border="1" cellpadding="3" cellspacing="3"
                     summary="Grid with hardcoded data"
                     title="Grid with hardcoded data" >

                     <h:panel_group id="form_header2">
                        <h:output_text id="A2" value="Logon&nbsp;"/>
                        <h:output_text id="B2" value="Form"/>
                     </h:panel_group>

                     <!-- Panel data elements -->

                    <h:output_text id="text1" value="Username:"/>

                    <h:input_text id="username1" inputClass="inputClass" value="JavaServerFaces" />

                    <h:output_text id="text2" outputClass="outputClass" value="Password:"/>

                    <h:input_secret inputClass="secretClass" id="password1" />

                    <h:command_button id="submit1" type="SUBMIT"
                        commandClass="commandClass" 
                        label="Login" >
                    </h:command_button>

                    <h:command_button id="reset1" type="RESET" 
                        label="Reset">
                    </h:command_button>

                </h:panel_grid>
             </td>
           </tr>

             <tr><td>
                 <h:panel_list id="list2"
                  border="1" cellpadding="3" cellspacing="3"
                     summary="List with HTML attributes."
                     title="List with no stylesheets" >

                  <!-- List Data -->

                  <h:panel_data    id="listData2" var="customer"
                       valueRef="ListBean">
                    <h:output_text id="accountId2"
                       valueRef="customer.accountId"/>
                    <h:output_text id="name2"
                       valueRef="customer.name"/>
                    <h:output_text id="symbol2"
                       valueRef="customer.symbol"/>
                    <h:output_text id="totalSales2"
                       valueRef="customer.totalSales"/>
                  </h:panel_data>

                 </h:panel_list> 
             </td>

            </tr>

      <TR>

	<TD>

            <h:command_button id="pushButton" type="button"
                 disabled = "true" image="duke.gif">
            </h:command_button>
	</TD>

      </TR>


      <TR>

	<TD>

            <h:command_button id="imageOnlyButton" type="submit"
                 image="duke.gif" rendered="true"> 
             </h:command_button>
	</TD>

      </TR>

      <TR>

	<TD>

	      <h:command_hyperlink id="link" 
                           commandClass="hyperlinkClass"
				       label="link text"/>

	</TD>

      </TR>

      <TR>

	<TD>

	      <h:command_hyperlink id="imageLink" 
				       image="duke.gif"/>

	</TD>

        <TD> 
            <h:graphic_image id="graphicImage" url="/duke.gif" ismap="true" usemap="#map1" /> 
        </TD>

      </TR>

      <TR>
        <TD>
            <h:command_hyperlink id="commandLink" 
              commandClass="hyperlinkClass"
              label="link text"/>
       </TD>
      </TR>

      <TR>
        <TD>
            <h:command_hyperlink id="commandParamLink" 
              commandClass="hyperlinkClass"
              label="link text">
              <f:parameter id="hlParam1" name="name" value="horwat"/>
              <f:parameter id="hlParam2" name="value" value="password"/>
            </h:command_hyperlink>
        </TD>
      </TR>

      <TR>
        <TD>
            <h:command_hyperlink id="hrefLink" 
              image="duke.gif"/>
        </TD>
      </TR>

      <TR>
        <TD>
            <h:command_hyperlink id="hrefParamLink" 
              image="duke.gif">
              <f:parameter id="hlParam3" name="name" value="horwat"/>
              <f:parameter id="hlParam4" name="value" value="password"/>
            </h:command_hyperlink>
        </TD>
      </TR>

      <TR>

	<TD>

	      <h:output_text value="Output Text" />
              <h:output_text id="testvisible1" value="This should not be visible"
                               rendered="false" />
              <h:graphic_image id="testvisible2" url="/duke.gif" rendered="false"  />

	</TD>

      </TR>

      <TR>

	<TD>

            <h:selectboolean_checkbox  rendered="true"
                   selectbooleanClass="selectbooleanClass"/>
	</TD>

      </TR>

      <TR>

	<TD>

	     <h:selectone_listbox selectoneClass="selectoneClass"
                     title="Select Quantity"
                     accesskey="N" tabindex="20" >

                <h:selectitem  disabled="true" itemValue="0" itemLabel="0"/>
                <h:selectitem  itemValue="1" itemLabel="1" title="One"/>
                <h:selectitem  itemValue="2" itemLabel="2" title="Two" />
                <h:selectitem  itemValue="3" itemLabel="3" title="Three" />
                <h:selectitem  itemValue="4" itemLabel="4" title="Four" />
                <h:selectitem  itemValue="5" itemLabel="5" title="Five" />
                <h:selectitem  itemValue="6" itemLabel="6" title="Six" />
                <h:selectitem  itemValue="7" itemLabel="7" title="Seven" />
                <h:selectitem  itemValue="8" itemLabel="8" title="Eight" />
                <h:selectitem  itemValue="9" itemLabel="9" title="nine" />

              </h:selectone_listbox>

	</TD>

      </TR>

      <TR>

	<TD>

	    <h:selectone_radio id="shipType" layout="LINE_DIRECTION">

                <h:selectitem itemValue="nextDay" itemLabel="Next Day"
                      tabindex="30" title="Next day shipment"/>
                <h:selectitem itemValue="nextWeek" itemLabel="Next Week" title="Next week shipment"
                                  tabindex="40" />
                <h:selectitem itemValue="nextMonth" itemLabel="Next Month"
                        tabindex="50" title="Next month shipment"/>

              </h:selectone_radio>

	</TD>

      </TR>

      <TR>

	<TD>
            <h:selectone_radio id="verticalRadio" 
                                            layout="PAGE_DIRECTION" border="1" >

                <h:selectitem itemValue="nextDay" itemLabel="Next Day"
                                   />
                <h:selectitem itemValue="nextWeek" itemLabel="Next Week"  />
                <h:selectitem itemValue="nextMonth" itemLabel="Next Month" />

           </h:selectone_radio>

	</TD>

      </TR>

      <TR>

        <TD>Date: 
        </TD>

	<TD><h:input_text value="Wed, Jul 10, 1996"
                              inputClass="inputClass">
                <f:convert_datetime dateStyle="long"/>
            </h:input_text>
	</TD>

      </TR>


      <TR>

        <TD>Disabled Date: 
        </TD>

	<TD><h:input_text id="date2" value="Thu, Jul 11, 1996"
                         disabled="true"
                        size="3" maxlength="20" tabindex="1" accesskey="D">
                <f:convert_datetime dateStyle="long"/>
            </h:input_text>
	</TD>

      </TR>

      <TR>

        <TD>DateTime: 
        </TD>

	<TD><h:input_text id="date3" 
                          value="Wed, Jul 10, 1996 AD at 12:31:31 PM">
                <f:convert_datetime pattern="EEE, MMM d, yyyy G 'at' hh:mm:ss a"/>
            </h:input_text>
	</TD>

      </TR>


      <tr>
          <td>
            <h:input_text id="testPattern" 
                        value="9999.98765" size="3" maxlength="20" 
                        inputClass="inputClass" 
                        tabindex="2" accesskey="D">
               <f:convert_number pattern="####"/>
            </h:input_text>
              </td>

      </tr>

      <tr>
          <td> <h:output_text outputClass="outputClass" id="percentLabel" value="OUTPUT-PERCENT" /> </td>
              <td>
                   <h:output_text id="testPercent" value="45%">
                       <f:convert_number type="number"/>
                   </h:output_text>
              </td>
      </tr>

      <TR>

        <TD>OutputDate: 
        </TD>

	<TD><h:output_text id="date4" value="Wed, Jul 10, 1996"
                              outputClass="outputClass" >
                <f:convert_datetime dateStyle="long"/>
            </h:output_text>
	</TD>

      </TR>

      <TR>

        <TD>OutputDateTime: 
        </TD>

	<TD><h:output_text id="date5" 
                          value="Wed, Jul 10, 1996 AD at 12:31:31 PM">
                <f:convert_datetime pattern="EEE, MMM d, yyyy G 'at' hh:mm:ss a"/>
            </h:output_text>
	</TD>

      </TR>

      <TR>

        <TD>InputTime: 
        </TD>

	<TD><h:input_text id="date6" 
                          value="12:31:31 PM">
                <f:convert_datetime timeStyle="medium"/>
            </h:input_text>
	</TD>

      </TR>

      <TR>

        <TD>OutputTime: 
        </TD>

	<TD><h:output_text id="date7" 
                          value="12:31:31 PM">
                <f:convert_datetime timeStyle="medium"/>
            </h:output_text>
	</TD>

      </TR>

           <tr>

             <td>

               <h:input_text id="input_date1" 
                                 value="Jan 12, 1952" 
                                 readonly="true"
                                 size="10" maxlength="20"
                                 alt="input_date medium readonly"
                                 accesskey="D" 
                               title="input_date medium readonly">
                   <f:convert_datetime dateStyle="medium"/>
                </h:input_text>


             </td>

            </tr>

           <tr>

             <td>

               <h:input_text id="input_date2" 
                                 value="Jan 12, 1952" 
                                 alt="input_date medium"
                                  title="input_date medium">
                   <f:convert_datetime dateStyle="medium"/>
                </h:input_text>

             </td>

            </tr>

           <tr>

             <td>

               <h:input_text id="input_date3" 
                                 value="01/12/1952" 
                                 alt="input_date short"
                                  title="input_date short">
                   
                   <f:convert_datetime dateStyle="short"/>
                </h:input_text>

             </td>

            </tr>

           <tr>

             <td>

               <h:input_text id="input_date4"  
                                 value="January 12, 1952" 
                                 size="20" maxlength="40"
                                 alt="input_date long"
                                 accesskey="d"
                               title="input_date long">
                   <f:convert_datetime dateStyle="long"/>
                </h:input_text>


             </td>

            </tr>

<tr>
					<TD>Multi-select menu:</TD>
					<TD><h:selectmany_menu id="ManyApples" selectmanyClass="selectmanyClass">
						<h:selectitem itemValue="0" itemLabel="zero" />
						<h:selectitem itemValue="1" itemLabel="one" />
						<h:selectitem itemValue="2" itemLabel="two" />
						<h:selectitem itemValue="3" itemLabel="three" />
						<h:selectitem itemValue="4" itemLabel="four" />
						<h:selectitem itemValue="5" itemLabel="five" />
						<h:selectitem itemValue="6" itemLabel="six" />
						<h:selectitem itemValue="7" itemLabel="seven" />
						<h:selectitem itemValue="8" itemLabel="eight" />
						<h:selectitem itemValue="9" itemLabel="nine" />
					</h:selectmany_menu></TD>

</tr>

<tr>
					<TD>Multi-select listbox:</TD>
					<TD><h:selectmany_listbox >
						<h:selectitem itemValue="0" itemLabel="zero" />
						<h:selectitem itemValue="1" itemLabel="one" />
						<h:selectitem itemValue="2" itemLabel="two" />
						<h:selectitem itemValue="3" itemLabel="three" />
						<h:selectitem itemValue="4" itemLabel="four" />
						<h:selectitem itemValue="5" itemLabel="five" />
						<h:selectitem itemValue="6" itemLabel="six" />
						<h:selectitem itemValue="7" itemLabel="seven" />
						<h:selectitem itemValue="8" itemLabel="eight" />
						<h:selectitem itemValue="9" itemLabel="nine" />
					</h:selectmany_listbox></TD>
</tr>

<tr>
					<TD><h:selectmany_checkboxlist id="ManyApples3" 
                                                selectmanyClass="selectmanyClass">
						<h:selectitem itemValue="0" itemLabel="zero" />
						<h:selectitem itemValue="1" itemLabel="one" />
						<h:selectitem itemValue="2" itemLabel="two" />
						<h:selectitem itemValue="3" itemLabel="three" />
						<h:selectitem itemValue="4" itemLabel="four" />
						<h:selectitem itemValue="5" itemLabel="five" />
						<h:selectitem itemValue="6" itemLabel="six" />
						<h:selectitem itemValue="7" itemLabel="seven" />
						<h:selectitem itemValue="8" itemLabel="eight" />
						<h:selectitem itemValue="9" itemLabel="nine" />
					</h:selectmany_checkboxlist></TD>
</tr>

<h:input_hidden value="48%" >
    <f:convert_number type="number"/>
</h:input_hidden>

  <TABLE>

</h:form>
</f:view>

    </BODY>
</HTML>
