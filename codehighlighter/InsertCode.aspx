<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="InsertCode, Blog.Web" %>
<%@ Register TagPrefix="CH" Namespace="ActiproSoftware.CodeHighlighter" Assembly="ActiproSoftware.CodeHighlighter.Net20" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>{#insertcode_dlg.title}</title>
     <style type="text/css" >
         body { BACKGROUND-COLOR: #e5e5e5 }
         .tb{ FONT-SIZE: 13px }
         .code{word-break: break-all;word-wrap:break-word;overflow:auto;margin:5px; padding:20px; background-color:#eee; border:solid 1px #ccc;}
     </style>
     <script type="text/javascript" src="../tiny_mce/tiny_mce_popup.js"></script>
     <script language="javascript" type="text/javascript">
		    tinyMCEPopup.requireLangPack();

            var InsertcodeDialog = {
	            init : function() {
		            //var f = document.forms[0];
                    //alert('InsertcodeDialog.init!');
		            // Get the selected contents as text and place it in the input
		            //f.someval.value = tinyMCEPopup.editor.selection.getContent({format : 'text'});
		            //f.somearg.value = tinyMCEPopup.getWindowArg('some_custom_arg');
	            },

	            insert : function() {
		            // Insert the contents from the input into the document
		            tinyMCEPopup.editor.execCommand('mceInsertContent', false, null );
		            tinyMCEPopup.close();
	            }
            };

            tinyMCEPopup.onInit.add(InsertcodeDialog.init, InsertcodeDialog);
            
		    function insertHighlighterCode(codestr)
		    {
		        if( tinyMCEPopup )
		        {
    		        tinyMCEPopup.editor.execCommand('mceInsertContent', false, codestr );
		            tinyMCEPopup.close();
    		    }else
    		    {
    		        setTimeout(function (){
    		            document.getElementById("ScriptOutPut").innerHTML = codestr;
    		        },500);
    		    }
		    }
     </script>
</head>
<body >
 <form id="form1" runat="server">
    <table class="tb" cellspacing="0" cellpadding="3" border="0">
     <tr>
         <th align="right" >{#insertcode_dlg.language}:</th>
         <td><asp:DropDownList ID="LanguageDropDownList" Runat="server"/></td>
     </tr>
     <tr>
         <th align="right" >{#insertcode_dlg.option}:</th>
         <td>
            <asp:CheckBox Runat="server" ID="chkEnableCollapse" Text="{#insertcode_dlg.enablecollapse}" />&nbsp;{#insertcode_dlg.collapsetitle}：<asp:TextBox ID="txtTitle" Text="{#insertcode_dlg.code}" runat="server"></asp:TextBox><br />
            <asp:CheckBox Runat="server" ID="chkEnableLineNumber" Text="{#insertcode_dlg.linenumber}" /><asp:CheckBox ID="chkCollapseAll" runat="server" Checked="false" Text="{#insertcode_dlg.collapseall}" />
         </td>
     </tr>
     <tr>
         <th valign="top" align="right">{#insertcode_dlg.code}:</th>
         <td><asp:TextBox ID="txtCode" TextMode="MultiLine" Rows="14" Columns="70" Runat="server" /></td>
     </tr>
     <tr>
         <td style="padding-left:6em" colspan="2">
            <asp:Button Runat="server" ID="HighlightButton" Text="{#insertcode_dlg._submit}" OnClick="HighlightButton_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;<input onclick="tinyMCEPopup.close();" type="button" value="{#insertcode_dlg.cancel}" />
        </td>
     </tr>
     <tr>
         <td colspan="2">
            <pre>
                <CH:CodeHighlighter ID="CodeHighlighter1" runat="server" OnPostRender="CodeHighlighter1_PostRender"></CH:CodeHighlighter>
            </pre>
         </td>
     </tr>
     <tr>
        <td colspan="2">
            <div id="ScriptOutPut" runat="server"></div>
        </td>
     </tr>
    </table>
 </form>
</body>
</html>