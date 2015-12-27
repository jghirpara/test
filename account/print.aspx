<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title>TAX INVOICE</title>
    <style>
<!--
 p.MsoNormal
	{mso-style-parent:"";
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
table.MsoTableGrid
	{border:1.0pt solid windowtext;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
p.MsoListParagraphCxSpFirst
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
p.MsoListParagraphCxSpMiddle
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
p.MsoListParagraphCxSpLast
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:36.0pt;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
    .style1
    {
        width: 18px;
    }
-->
</style>
</head>
<body>
    <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
        <span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
    <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
        <span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
    <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
        <span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
    <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
        <span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
    <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
        <span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
    <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
        <span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
    <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
        <span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
    <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
        <span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
    <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
        <span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
  
  
 
     
    <table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="730"
        style="border-collapse: collapse; border: medium none; margin-left: 15.9pt">
        <tr>
            <td width="289" colspan="6" valign="top" style="width: 217.05pt; border: medium none;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
            </td>
            <td width="262" colspan="9" valign="top" style="width: 196.3pt; border: medium none;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 14.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_vch_typ" runat="server"></asp:Label></span></b>
            </td>
            <td width="179" colspan="4" valign="top" style="width: 134.25pt; border: medium none;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">ORIGINAL
                        FOR BUYER</span></b>
            </td>
        </tr>
        <tr>
            <td width="730" colspan="19" valign="top" style="width: 547.6pt; border-left: medium none;
                border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">(ISSUE OF
                        INVOICE UNDER RULE 11 OF CENTRAL EXCISE RULES 2002)</span>
            </td>
        </tr>
        <tr>
            <td width="83" colspan="2" valign="top" style="width: 61.9pt; border-left: 1.0pt solid windowtext;
                border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">VAT No.</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">CST No.</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">S.TAX
                        No.</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">PAN</span></b>
            </td>
            <td width="21" colspan="2" valign="top" style="width: 16.1pt; border-left: medium none;
                border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span></p>
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span></p>
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span></p>
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span>
            </td>
            <td width="206" colspan="3" valign="top" style="width: 154.35pt; border-left: medium none;
                border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_cmp_vat" runat="server" Width="100%"></asp:Label></span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_cst_no" runat="server" Width="100%"></asp:Label></span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_st_no" runat="server" Width="100%"></asp:Label></span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_pan_no" runat="server" Width="100%"></asp:Label></span>
            </td>
            <td colspan="3" valign="top" style="padding: 0cm 5.4pt; border-left-style: none;
                border-left-color: inherit; border-left-width: medium; border-right-style: none;
                border-right-color: inherit; border-right-width: medium; border-top-style: none;
                border-top-color: inherit; border-top-width: medium; border-bottom-style: solid;
                border-bottom-color: inherit; border-bottom-width: 1px;">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">EXCISE
                        No.</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">RANGE</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">DIVISION</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">COMMI.
                        RATE</span></b>
            </td>
            <td width="24" valign="top" style="width: 17.75pt; border-left: medium none; border-right: medium none;
                border-top: medium none; border-bottom: 1px solid; padding-left: 5.4pt; padding-right: 5.4pt;
                padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span>
            </td>
            <td width="301" colspan="8" valign="top" style="width: 225.75pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1px solid;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_exc_no" runat="server" Width="100%"></asp:Label></span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_range" runat="server" Width="100%"></asp:Label></span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_div" runat="server" Width="100%"></asp:Label></span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_comi_rt" runat="server" Width="100%"></asp:Label></span>
            </td>
        </tr>
        <tr>
            <td width="336" colspan="8" rowspan="5" valign="top" style="width: 251.75pt; border-left: 1.0pt solid windowtext;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        Name &amp; Address of Buyer</span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <b><span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_puch_party" runat="server" Width="100%"></asp:Label></span></b></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_puch_add1" runat="server" Width="100%"></asp:Label></span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_puch_add2" runat="server" Width="100%"></asp:Label></span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_puch_city" runat="server"></asp:Label>
                        &nbsp;
                        <asp:Label ID="lbl_puch_st" runat="server"></asp:Label></span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        Ph.:
                        <asp:Label ID="lbl_puch_ph" runat="server" Width="80%"></asp:Label></span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        &nbsp;</span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        VAT TIN No.:
                        <asp:Label ID="lbl_vat_puch_no" runat="server" Width="70%"></asp:Label></span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        CST TIN No.:
                        <asp:Label ID="lbl_puch_cst_no" runat="server" Width="70%"></asp:Label></span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">ECC No.:
                        <asp:Label ID="lbl_ecc_puch_no" runat="server" Width="70%"></asp:Label></span>
            </td>
            <td width="208" colspan="6" valign="top" style="width: 155.85pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Invoice
                        No.</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_inv_no" runat="server" Width="100%"></asp:Label></span>
            </td>
            <td width="187" colspan="5" valign="top" style="width: 140.0pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top-color: windowtext; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Date</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_inv_dt" runat="server" Width="100%"></asp:Label></span>
            </td>
        </tr>
        <tr>
            <td width="208" colspan="6" valign="top" style="width: 155.85pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Order
                        No.</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_odr_no" runat="server" Width="100%"></asp:Label></span>
            </td>
            <td width="187" colspan="5" valign="top" style="width: 140.0pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Date</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_odr_dt" runat="server" Width="100%"></asp:Label></span>
            </td>
        </tr>
        <tr>
            <td width="208" colspan="6" valign="top" style="width: 155.85pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Delivery
                        Challan No.</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_dc_no" runat="server" Width="100%"></asp:Label></span>
            </td>
            <td width="187" colspan="5" valign="top" style="width: 140.0pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Date</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_dc_dt" runat="server" Width="100%"></asp:Label></span>
            </td>
        </tr>
        <tr>
            <td width="208" colspan="6" valign="top" style="width: 155.85pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">LR No.</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_lr_no" runat="server" Width="100%"></asp:Label></span>
            </td>
            <td width="187" colspan="5" valign="top" style="width: 140.0pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Date</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_lr_dt" runat="server" Width="100%"></asp:Label></span>
            </td>
        </tr>
        <tr style="height: 3.5pt">
            <td width="208" colspan="6" valign="top" style="width: 155.85pt; height: 3.5pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Dispatched
                        Through</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_deshpath" runat="server" Width="100%"></asp:Label></span>
            </td>
            <td width="187" colspan="5" valign="top" style="width: 140.0pt; height: 3.5pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Vehicle
                        No</span></b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">.</span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_vihical_no" runat="server" Width="100%"></asp:Label></span>
            </td>
        </tr>
        <tr style="height: 3.6pt">
            <td width="336" colspan="8" rowspan="4" valign="top" style="width: 251.75pt; height: 3.6pt;
                border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none;
                border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        Name &amp; Address of Consignee</span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <b><span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_cuni_nm" runat="server" Width="100%"></asp:Label></span></b></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_cuni_add1" runat="server" Width="100%"></asp:Label></span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_cuni_add2" runat="server" Width="100%"></asp:Label></span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_cuni_ct" runat="server"></asp:Label>
                        &nbsp;
                        <asp:Label ID="lbl_cuni_st" runat="server"></asp:Label></span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        Ph.:<asp:Label ID="lbl_cuni_ph" runat="server" Width="80%"></asp:Label></span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        &nbsp;</span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        VAT TIN No.:
                        <asp:Label ID="lbl_cuni_vat" runat="server" Width="70%"></asp:Label></span></p>
                <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal;
                    direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
                    <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        CST TIN No.:
                        <asp:Label ID="lbl_cuni_cst" runat="server" Width="70%"></asp:Label></span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">ECC No.:
                        <asp:Label ID="lbl_cuni_ecc" runat="server" Width="70%"></asp:Label></span>
            </td>
            <td width="208" colspan="6" valign="top" style="width: 155.85pt; height: 3.6pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">From</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                      <asp:Label ID="lbl_to" runat="server" Width="100%"></asp:Label>  </span>
            </td>
            <td width="187" colspan="5" valign="top" style="width: 140.0pt; height: 3.6pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">To</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                <asp:Label ID="lbl_from" runat="server" Width="100%"></asp:Label>        </span>
            </td>
        </tr>
        <tr style="height: 3.6pt">
            <td width="208" colspan="6" valign="top" style="width: 155.85pt; height: 3.6pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Excise
                        Commodity</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_ecc_comdity" runat="server" Width="100%"></asp:Label></span>
            </td>
            <td width="187" colspan="5" valign="top" style="width: 140.0pt; height: 3.6pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Tariff
                        No.</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_tariff_no" runat="server" Width="100%"></asp:Label></span>
            </td>
        </tr>
        <tr style="height: 3.6pt">
            <td width="208" colspan="6" valign="top" style="width: 155.85pt; height: 3.6pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Date &amp;
                        Time Issue of Inovice</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_issu_dt" runat="server"></asp:Label>
                        |
                        <asp:Label ID="lbl_issu_time" runat="server"></asp:Label></span>
            </td>
            <td width="187" colspan="5" valign="top" style="width: 140.0pt; height: 3.6pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Date &amp;
                        Time Removable Good</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_removal_dt" runat="server"></asp:Label>
                        |
                        <asp:Label ID="lbl_reoval_time" runat="server"></asp:Label></span>
            </td>
        </tr>
        <tr style="height: 3.6pt">
            <td width="208" colspan="6" valign="top" style="width: 155.85pt; height: 3.6pt; border-left: medium none;
                border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">No &amp;
                        Dt. Notification under which</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_underwich" runat="server" Width="100%"></asp:Label></span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
            </td>
            <td width="187" colspan="5" valign="top" style="width: 140.0pt; height: 3.6pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
            </td>
        </tr>
        <tr>
            <td width="42" valign="top" style="width: 31.3pt; border-left: 1.0pt solid windowtext;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Sr. No.</span></b>
            </td>
            <td width="355" colspan="8" valign="top" style="width: 266.3pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Description</span></b>
            </td>
            <td width="82" colspan="4" valign="top" style="width: 61.75pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Quantity</span></b>
            </td>
            <td width="74" colspan="3" valign="top" style="width: 55.75pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Rate</span></b>
            </td>
            <td width="57" valign="top" style="width: 43.0pt; border-left: medium none; border-right: 1.0pt solid windowtext;
                border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt;
                padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Per</span></b>
            </td>
            <td width="119" colspan="2" valign="top" style="width: 89.5pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Total
                        Amount</span></b>
            </td>
        </tr>
        <tr style="height: 7.0cm">
            <td width="42" valign="top" style="width: 31.3pt; height: 7.0cm; border-left: 1.0pt solid windowtext;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_sr" runat="server" Text="Label" Width="100%"></asp:Label></span></b>
            </td>
            <td width="355" colspan="8" valign="top" style="width: 266.3pt; height: 7.0cm; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_itm_nm" runat="server" Width="100%" Height="100%"></asp:Label></span></b>
            </td>
            <td width="82" colspan="4" valign="top" style="width: 61.75pt; height: 7.0cm; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_qty" runat="server" Width="100%" Height="100%"></asp:Label></span></b>
            </td>
            <td width="74" colspan="3" valign="top" style="width: 55.75pt; height: 7.0cm; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_rt" runat="server" Width="100%" Height="100%"></asp:Label></span></b>
            </td>
            <td width="57" valign="top" style="width: 43.0pt; height: 7.0cm; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_par" runat="server" Width="100%" Height="100%"></asp:Label></span></b>
            </td>
            <td width="119" colspan="2" valign="top" style="width: 89.5pt; height: 7.0cm; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_total_amt" runat="server" Width="100%" Height="100%"></asp:Label></span></b>
            </td>
        </tr>
        <tr>
            <td width="42" valign="top" style="width: 31.3pt; border-left: 1.0pt solid windowtext;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
            </td>
            <td width="355" colspan="8" valign="top" style="width: 266.3pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
            </td>
            <td width="82" colspan="4" valign="top" style="width: 61.75pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
            </td>
            <td width="74" colspan="3" valign="top" style="width: 55.75pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
            </td>
            <td width="57" valign="top" style="width: 43.0pt; border-left: medium none; border-right: 1.0pt solid windowtext;
                border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt;
                padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">TOTAL</span></b>
            </td>
            <td width="119" colspan="2" valign="top" style="width: 89.5pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_amt" runat="server" Width="100%"></asp:Label></span></b>
            </td>
        </tr>
        <tr style="height: 7.9pt">
            <td width="479" colspan="13" valign="top" style="width: 359.35pt; height: 7.9pt;
                border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none;
                border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">BANK DETAIL</span></b></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Bank Name:
                    </span></b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_bnk_nm" runat="server"></asp:Label>
                        | <b>Account No.:</b>
                        <asp:Label ID="lbl_ac_no" runat="server"></asp:Label></span></p>
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Ifsc Code:</span></b><span
                        lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_ifc_code" runat="server"></asp:Label>
                        | <b>Branch:</b>
                        <asp:Label ID="lbl_barnch" runat="server"></asp:Label></span>
            </td>
            <td colspan="5" rowspan="3" valign="top" style="padding: 0cm 5.4pt; height: 7.9pt;
                border-right: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext;
                border-left-style: none; border-left-color: inherit; border-left-width: medium;
                border-top-style: none; border-top-color: inherit; border-top-width: medium;">
                <p class="MsoNormal" align="right"  style="text-align: right; line-height: normal; min-height:50pt;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_extra" runat="server" Height="50pt"></asp:Label></span></b></p>
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Total</span></b></p>
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_vat_type" runat="server"></asp:Label></span></b></p>
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Add. Output
                        Vat
                        <asp:Label ID="lbl_addvat" runat="server" Text="Label"></asp:Label></span></b>
            </td>
            <td width="119" valign="top" style="width: 89.0pt; border-left: medium none; border-right: 1.0pt solid windowtext;
                border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt;
                padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal; min-height:50pt;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_extraprice" runat="server" Width="100%" Height="40pt"></asp:Label></span></b></p>
            </td>
        </tr>
        <tr>
            <td width="92" colspan="3" valign="top" style="width: 69.25pt; border-left: 1.0pt solid windowtext;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">PLA: </span>
                    </b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_pa" runat="server"></asp:Label></span>
            </td>
            <td width="109" colspan="2" valign="top" style="width: 81.75pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">R.G.:
                    </span></b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_rg" runat="server"></asp:Label></span>
            </td>
            <td width="88" valign="top" style="width: 66.05pt; border-left: medium none; border-right: 1.0pt solid windowtext;
                border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt;
                padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Part:</span></b><span
                        lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif"><asp:Label ID="lbl_prt"
                            runat="server"></asp:Label></span>
            </td>
            <td width="190" colspan="7" valign="top" style="width: 142.3pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Dt.</span></b><span
                        lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif"><asp:Label ID="lbl_dt"
                            runat="server"></asp:Label></span>
            </td>
            <td width="119" valign="top" style="width: 89.0pt; border-left: medium none; border-right: 1.0pt solid windowtext;
                border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt;
                padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_extratotal" runat="server" Width="100%" Text="Label"></asp:Label></span></b>
            </td>
        </tr>
        <tr style="height: 15.35pt">
            <td width="479" colspan="13" valign="top" style="width: 359.35pt; height: 15.35pt;
                border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none;
                border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Excise
                        Duty in Words : </span></b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            Rs.
                            <label id="lblmsg2" runat="server" />
                            </asp:Label></span>
            </td>
            <td width="119" valign="top" style="width: 89.0pt; height: 15.35pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_vat_amt" runat="server"></asp:Label></span></b></p>
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_add_amt" runat="server"></asp:Label></span></b>
            </td>
        </tr>
        <tr>
            <td width="551" colspan="15" valign="top" style="width: 413.35pt; border-left: 1.0pt solid windowtext;
                border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Amount
                        in Words : </span></b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            Rs.
                            <label id="lblmsg" runat="server" />
                            </asp:Label></span>
            </td>
            <td colspan="3" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit;
                border-left-width: medium; border-top-style: none; border-top-color: inherit;
                border-top-width: medium;">
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">TOTAL</span></b>
            </td>
            <td width="119" valign="top" style="width: 89.0pt; border-left: medium none; border-right: 1.0pt solid windowtext;
                border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt;
                padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="right" style="text-align: right; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 10.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_net_amt" runat="server" Width="100%"></asp:Label></span></b>
            </td>
        </tr>
        <tr>
            <td width="730" colspan="19" valign="top" style="width: 547.6pt; border-left: 1.0pt solid windowtext;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">TERMS
                        &amp; CONDITIONS</span></b></p>
                <p class="MsoListParagraphCxSpFirst" style="text-indent: 0cm; line-height: normal;
                    margin-left: 18.0pt; margin-right: 0cm; margin-top: 0cm; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 7.0pt; font-family: Arial,sans-serif"><span
                        style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt;
                        font-family: Times New Roman">&nbsp;&nbsp;&nbsp; </span>
                        <asp:Label ID="lbl_term_condition" runat="server" Width="95%"></asp:Label></span></p>
            </td>
        </tr>
        <tr>
            <td width="477" colspan="12" valign="top" style="width: 358.05pt; border-left: 1.0pt solid windowtext;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Excise
                        Declaration:</span></b></p>
                <p class="MsoNormal" style="text-align: justify; line-height: normal; margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_ecc_declartion" runat="server" Width="100%"></asp:Label></span>
            </td>
            <td width="253" colspan="7" valign="top" style="width: 189.55pt; border-left: medium none;
                border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">F<b>or, <asp:Label ID="lbl_cmp" runat="server"></asp:Label></b></span></p>
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b></p>
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b></p>
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b></p>
                <p class="MsoNormal" align="center" style="text-align: center; line-height: normal;
                    margin-bottom: .0001pt">
                    <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Authorized
                        Signatory</span></b>
            </td>
        </tr>
        <tr height="0">
            <td width="42" style="border: medium none">
               </td>
            <td width="41" style="border: medium none">
            </td>
            <td width="10" style="border: medium none">
            </td>
            <td width="12" style="border: medium none">
            </td>
            <td width="97" style="border: medium none">
            </td>
            <td width="88" style="border: medium none">
            </td>
            <td width="20" style="border: medium none">
            </td>
            <td width="26" style="border: medium none">
            </td>
            <td width="61" style="border: medium none">
            </td>
            <td style="border: medium none" class="style1">
            </td>
            <td width="24" style="border: medium none">
            </td>
            <td width="48" style="border: medium none">
            </td>
            <td width="2" style="border: medium none">
            </td>
            <td width="64" style="border: medium none">
            </td>
            <td width="8" style="border: medium none">
            </td>
            <td width="8" style="border: medium none">
            </td>
            <td width="8" style="border: medium none">
            </td>
            <td width="2" style="border: medium none">
            </td>
            <td width="57" style="border: medium none">
            </td>
        </tr>
    </table>
</body>
</html>
