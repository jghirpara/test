<%@ Page Language="C#" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title>TAX INVOICE</title>

    <style>
   
    .right_align { text-align: right; }
    
    </style>

    <style>
<!--
table.MsoTableGrid
	{border:1.0pt solid windowtext;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
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
        .auto-style1 {
            width: 155.7pt;
            height: 32px;
        }
        .auto-style2 {
            width: 116.75pt;
            height: 33px;
        }
        .auto-style3 {
            width: 69.25pt;
            height: 25px;
        }
        .auto-style4 {
            width: 81.75pt;
            height: 25px;
        }
        .auto-style5 {
            width: 66.05pt;
            height: 25px;
        }
        .auto-style6 {
            width: 108.3pt;
            height: 25px;
        }
        .auto-style7 {
            width: 89.0pt;
            }
        .style1
        {
            width: 31.3pt;
            height: 188pt;
        }
        .style2
        {
            width: 243.85pt;
            height: 188pt;
        }
        .style3
        {
            width: 52.25pt;
            height: 188pt;
        }
        .style4
        {
            width: 53.75pt;
            height: 188pt;
        }
        .style5
        {
            width: 32.2pt;
            height: 188pt;
        }
        .style6
        {
            width: 45.25pt;
            height: 188pt;
        }
        .style7
        {
            width: 89.0pt;
            height: 188pt;
        }
        .style8
        {
            width: 24px;
        }
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    Select Copy : 
    <asp:DropDownList ID="DropDownList1" runat="server" 
       >
        <asp:ListItem>All</asp:ListItem>
        <asp:ListItem>ORIGINAL</asp:ListItem>
        <asp:ListItem>DUPLICATE</asp:ListItem>
        <asp:ListItem>TRIPLICATE</asp:ListItem>
        <asp:ListItem>NOT FOR CENVAT</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Print" onclick="Button1_Click" />
    <p class="MsoNormal" style="line-height: 100%; margin: 0">
        <span lang="EN-US" style="font-size: 8.0pt; line-height: 107%">&nbsp;</span></p>
    <p class="MsoNormal" style="line-height: 100%; margin: 0">
        <span lang="EN-US" style="font-size: 8.0pt; line-height: 107%">&nbsp;</span></p>
    <p class="MsoNormal" style="line-height: 100%; margin: 0">
        <span lang="EN-US" style="font-size: 8.0pt; line-height: 107%">&nbsp;</span></p>
    <p class="MsoNormal" style="line-height: 100%; margin: 0">
        &nbsp;</p>
    <p class="MsoNormal" style="line-height: 100%; margin: 0">
        &nbsp;</p>
    <p class="MsoNormal" style="line-height: 100%; margin: 0">
        &nbsp;</p>
    <p class="MsoNormal" style="line-height: 100%; margin: 0">
        &nbsp;</p>
    <div style="align-content: center">
        <table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="700"
            style="border-collapse: collapse; border: medium none; margin-left: 10.4pt">
            <tr>
                <td width="289" colspan="6" valign="top" style="width: 217.05pt; border: none; padding: 0cm 5.4pt 0cm 5.4pt">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
                </td>
                <td width="262" colspan="8" valign="top" style="width: 196.3pt; border: none; padding: 0cm 5.4pt 0cm 5.4pt">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 14.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_vch_typ" runat="server"></asp:Label></span></b>
                </td>
                <td width="179" colspan="3" valign="top" style="width: 134.25pt; border: none; padding: 0cm 5.4pt 0cm 5.4pt">
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif"></span></b>
                </td>
            </tr>
            <tr>
                <td width="730" colspan="17" valign="top" style="width: 547.6pt; border-left: medium none;
                    border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">(ISSUE OF
                            INVOICE UNDER RULE 11 OF CENTRAL EXCISE RULES 2002)</span>
                </td>
            </tr>
            <tr>
                <td width="83" colspan="2" valign="top" style="width: 61.9pt; border-left: 1.0pt solid windowtext;
                    border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">VAT No.</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">CST No.</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">S.TAX
                            No.</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">PAN</span></b>
                </td>
                <td width="21" colspan="2" valign="top" style="width: 16.1pt; border-left: medium none;
                    border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span></p>
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span></p>
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span></p>
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span></p>
                </td>
                <td width="248" colspan="3" valign="top" style="width: 186.35pt; border-left: medium none;
                    border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif"></span>
                        <asp:Label ID="lbl_cmp_vat" runat="server"></asp:Label>
                    </p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_cst_no" runat="server"></asp:Label>
                    </p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_st_no" runat="server"></asp:Label>
                    </p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_pan_no" runat="server"></asp:Label>
                </td>
                <td colspan="4" valign="top" 
                    style="padding: 0cm 5.4pt; border-left-style: none; border-left-color: inherit; border-left-width: medium; border-right-style: none; border-right-color: inherit; border-right-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium; border-bottom-style: solid; border-bottom-color: inherit; border-bottom-width: 1px;">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">EXCISE
                            No.</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">RANGE</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">DIVISION</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">COMMI.
                            RATE</span></b>
                </td>
                <td valign="top" style="border-left: medium none; border-right: medium none; border-top: medium none;
                    border-bottom: 1px solid; width: 3px; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span>
                        <p class="MsoNormal" style="line-height: 100%; margin: 0">
                            <span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">:</span>
                </td>
                <td colspan="5" valign="top" style="width: 276px; border-left: medium none; border-right: 1.0pt solid windowtext;
                    border-top: medium none; border-bottom: 1px solid; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_exc_no" runat="server"></asp:Label>
                        <p class="MsoNormal" style="line-height: 100%; margin: 0">
                            <asp:Label ID="lbl_range" runat="server"></asp:Label>
                        </p>
                        <p class="MsoNormal" style="line-height: 100%; margin: 0">
                            <asp:Label ID="lbl_div" runat="server"></asp:Label>
                        </p>
                        <p class="MsoNormal" style="line-height: 100%; margin: 0">
                            <asp:Label ID="lbl_comi_rt" runat="server"></asp:Label>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td width="367" colspan="8" rowspan="5" valign="top" style="width: 275.15pt; border-left: 1.0pt solid windowtext;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            Purchaser’s Name &amp; Address</span></p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <b><span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_puch_party" runat="server"></asp:Label>
                        </span></b>
                    </p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <asp:Label ID="lbl_puch_add1" runat="server"></asp:Label>
                    </p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <asp:Label ID="lbl_puch_add2" runat="server"></asp:Label>
                    </p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <asp:Label ID="lbl_puch_city" runat="server"></asp:Label>
                        <asp:Label ID="lbl_puch_st" runat="server"></asp:Label>
                    </p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            Ph.:
                            <asp:Label ID="lbl_puch_ph" runat="server"></asp:Label>
                        </span>
                    </p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            VAT TIN No.:
                            <asp:Label ID="lbl_vat_puch_no" runat="server"></asp:Label>
                        </span>
                    </p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            CST TIN No.:
                            <asp:Label ID="lbl_puch_cst_no" runat="server"></asp:Label>
                        </span>
                    </p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">ECC No.:
                            <asp:Label ID="lbl_ecc_puch_no" runat="server"></asp:Label>
                        </span>
                </td>
                <td width="208" colspan="7" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                    border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit;
                    border-left-width: medium; border-top-style: none; border-top-color: inherit;
                    border-top-width: medium;" class="auto-style1">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Invoice
                            No.</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_inv_no" runat="server"></asp:Label>
                </td>
                <td width="156" colspan="2" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                    border-bottom: 1.0pt solid windowtext; border-top-color: windowtext; border-left-style: none;
                    border-left-color: inherit; border-left-width: medium;" class="auto-style2">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Date</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_inv_dt" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="208" colspan="7" valign="top" style="width: 155.7pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Order
                            No.</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_odr_no" runat="server"></asp:Label>
                    &nbsp;
                </td>
                <td width="156" colspan="2" valign="top" style="width: 116.75pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Date</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_odr_dt" runat="server"></asp:Label>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td width="208" colspan="7" valign="top" style="width: 155.7pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Delivery
                            Challan No.</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_dc_no" runat="server"></asp:Label>
                </td>
                <td width="156" colspan="2" valign="top" style="width: 116.75pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Date</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_dc_dt" runat="server"></asp:Label>
                        </span>
                </td>
            </tr>
            <tr>
                <td width="208" colspan="7" valign="top" style="width: 155.7pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">LR No.</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_lr_no" runat="server"></asp:Label>
                </td>
                <td width="156" colspan="2" valign="top" style="width: 116.75pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Date</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_lr_dt" runat="server"></asp:Label>
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 3.5pt">
                <td width="208" colspan="7" valign="top" style="width: 155.7pt; height: 3.5pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Dispatched
                            Through</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_deshpath" runat="server"></asp:Label>
                </td>
                <td width="156" colspan="2" valign="top" style="width: 116.75pt; height: 3.5pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Vehicle
                            No</span></b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">.</span></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_vihical_no" runat="server"></asp:Label>
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 3.6pt">
                <td width="367" colspan="8" rowspan="5" valign="top" style="width: 275.15pt; height: 3.6pt;
                    border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none;
                    border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            Consignee Name &amp; Address other Than Purchaser</span></p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <b><span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_cuni_nm" runat="server"></asp:Label>
                        </span></b>
                    </p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <asp:Label ID="lbl_cuni_add1" runat="server"></asp:Label>
                    </p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <asp:Label ID="lbl_cuni_add2" runat="server"></asp:Label>
                    </p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <asp:Label ID="lbl_cuni_ct" runat="server"></asp:Label>
                        <asp:Label ID="lbl_cuni_st" runat="server"></asp:Label>
                    </p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            Ph.:
                            <asp:Label ID="lbl_cuni_ph" runat="server"></asp:Label>
                        </span>
                    </p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            VAT TIN No.:
                            <asp:Label ID="lbl_cuni_vat" runat="server"></asp:Label>
                        </span>
                    </p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            CST TIN No.:
                            <asp:Label ID="lbl_cuni_cst" runat="server"></asp:Label>
                        </span>
                    </p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">ECC No.:
                            <asp:Label ID="lbl_cuni_ecc" runat="server"></asp:Label>
                        </span>
                </td>
                <td width="208" colspan="7" valign="top" style="width: 155.7pt; height: 3.6pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">From</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_from" runat="server"></asp:Label>
                </td>
                <td width="156" colspan="2" valign="top" style="width: 116.75pt; height: 3.6pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">To</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_to" runat="server"></asp:Label>
                </td>
            </tr>
            <tr style="height: 3.6pt">
                <td width="208" colspan="7" valign="top" style="width: 155.7pt; height: 3.6pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Excise
                            Commodity</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_ecc_comdity" runat="server"></asp:Label>
                </td>
                <td width="156" colspan="2" valign="top" style="width: 116.75pt; height: 3.6pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Tariff
                            No.</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_tariff_no" runat="server"></asp:Label>
                </td>
            </tr>
            <tr style="height: 3.6pt">
                <td width="208" colspan="7" valign="top" style="width: 155.7pt; height: 3.6pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Date &amp;
                            Time Issue of Inovice</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_issu_dt" runat="server"></asp:Label>
                        <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;|
                            <asp:Label ID="lbl_issu_time" runat="server"></asp:Label>
                        </span>
                </td>
                <td width="156" colspan="2" rowspan="3" valign="top" style="width: 116.75pt; height: 3.6pt;
                    border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none;
                    border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Self-Authentication</span></b>
                </td>
            </tr>
            <tr style="height: 3.6pt">
                <td width="208" colspan="7" valign="top" style="width: 155.7pt; height: 3.6pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Date &amp;
                            Time Removable Good</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_removal_dt" runat="server"></asp:Label>
                        <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;|
                            <asp:Label ID="lbl_reoval_time" runat="server"></asp:Label>
                        </span>
                </td>
            </tr>
            <tr style="height: 3.6pt">
                <td width="208" colspan="7" valign="top" style="width: 155.7pt; height: 3.6pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">No &amp;
                            Dt. Notification under which</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_underwich" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="42" valign="top" style="width: 31.3pt; border-left: 1.0pt solid windowtext;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Sr. No.</span></b>
                </td>
                <td width="325" colspan="7" valign="top" style="width: 243.85pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Description</span></b>
                </td>
                <td width="70" colspan="2" valign="top" style="width: 52.25pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Quantity</span></b>
                </td>
                <td width="72" colspan="3" valign="top" style="width: 53.75pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Rate</span></b>
                </td>
                <td width="43" valign="top" style="width: 32.2pt; border-left: medium none; border-right: 1.0pt solid windowtext;
                    border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Per</span></b>
                </td>
                <td width="60" colspan="2" valign="top" style="width: 45.25pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Disc.%</span></b>
                </td>
                <td width="119" valign="top" style="width: 89.0pt; border-left: medium none; border-right: 1.0pt solid windowtext;
                    border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Total
                            Amount</span></b>
                </td>
            </tr>
            <tr>
                <td width="42" valign="top" style="padding: 0cm 5.4pt; border-left: 1.0pt solid windowtext;
                    border-right: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext;
                    border-top-style: none; border-top-color: inherit; border-top-width: medium;"
                    class="style1">
                 
                        <asp:Label ID="lbl_sr" runat="server" Text="Label"></asp:Label>
                </td>
                <td width="325" colspan="7" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                    border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit;
                    border-left-width: medium; border-top-style: none; border-top-color: inherit;
                    border-top-width: medium;" class="style2">
                    <asp:Label ID="lbl_itm_nm" runat="server"></asp:Label>
                </td>
                <td width="70" colspan="2" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                    border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit;
                    border-left-width: medium; border-top-style: none; border-top-color: inherit;
                    border-top-width: medium;" class="style3">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <asp:Label ID="lbl_qty" runat="server"></asp:Label>
                    &nbsp;
                </td>
                <td width="72" colspan="3" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                    border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit;
                    border-left-width: medium; border-top-style: none; border-top-color: inherit;
                    border-top-width: medium;" class="style4">
                    <p class="MsoNormal" align="center" style="text-align:right; line-height: 100%;
                        margin: 0">
                        <asp:Label ID="lbl_rt" runat="server"></asp:Label>
                    &nbsp;
                </td>
                <td width="43" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                    border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit;
                    border-left-width: medium; border-top-style: none; border-top-color: inherit;
                    border-top-width: medium;" class="style5">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <asp:Label ID="lbl_par" runat="server"></asp:Label>
                </td>
                <td width="60" colspan="2" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                    border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit;
                    border-left-width: medium; border-top-style: none; border-top-color: inherit;
                    border-top-width: medium;" class="style6">
                    <asp:Label ID="lbl_dis" runat="server"></asp:Label>
                </td>
                <td width="119" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                    border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit;
                    border-left-width: medium; border-top-style: none; border-top-color: inherit;
                    border-top-width: medium;" class="style7">
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_total_amt" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="42" valign="top" style="width: 31.3pt; border-left: 1.0pt solid windowtext;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
                </td>
                <td width="325" colspan="7" valign="top" style="width: 243.85pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
                </td>
                <td width="70" colspan="2" valign="top" style="width: 52.25pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <asp:Label ID="lbl_tt_qty" runat="server"></asp:Label>
                </td>
                <td width="72" colspan="3" valign="top" style="width: 53.75pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
                </td>
                <td width="43" valign="top" style="width: 32.2pt; border-left: medium none; border-right: 1.0pt solid windowtext;
                    border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
                </td>
                <td width="60" colspan="2" valign="top" style="width: 45.25pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b>
                </td>
                <td width="119" valign="top" style="width: 89.0pt; border-left: medium none; border-right: 1.0pt solid windowtext;
                    border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_amt" runat="server"></asp:Label>
                </td>
            </tr>
            <tr style="height: 7.9pt">
                <td width="434" colspan="9" valign="top" style="width: 325.35pt; height: 7.9pt; border-left: 1.0pt solid windowtext;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">BANK DETAIL</span></b></p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Bank Name:
                            <asp:Label ID="lbl_bnk_nm" runat="server"></asp:Label>
                        </span></b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            &nbsp;| <b>Account No.:</b>
                            <asp:Label ID="lbl_ac_no" runat="server"></asp:Label>
                        </span>
                    </p>
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Ifsc Code:</span></b><span
                            lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_ifc_code" runat="server"></asp:Label>
                            &nbsp;| <b>Branch:</b>
                            <asp:Label ID="lbl_barnch" runat="server"></asp:Label>
                        </span>
                </td>
                <td width="178" colspan="7" rowspan="3" valign="top" style="width: 133.25pt; height: 7.9pt;
                    border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none;
                    border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Excise
                            12.5%</span></b></p>
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_expence_nm" runat="server"></asp:Label>
                    </p>
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_vat_type" runat="server"></asp:Label>
                    </p>
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_add_vat_typ" runat="server">Add Tax</asp:Label>
                    &nbsp;
                </td>
                <td width="119" valign="top" style="width: 89.0pt; height: 7.9pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_price" runat="server"></asp:Label>
                    </p>
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_exp_pric" runat="server"></asp:Label>
                    </p>
                </td>
            </tr>
            <tr>
                <td width="92" colspan="3" valign="top" style="padding: 0cm 5.4pt; border-left: 1.0pt solid windowtext;
                    border-right: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext;
                    border-top-style: none; border-top-color: inherit; border-top-width: medium;"
                    class="auto-style3">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">PLA:
                            <asp:Label ID="lbl_pa" runat="server"></asp:Label>
                        </span></b>
                </td>
                <td width="109" colspan="2" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                    border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit;
                    border-left-width: medium; border-top-style: none; border-top-color: inherit;
                    border-top-width: medium;" class="auto-style4">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0; height: 30px;">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">R.G.:
                            <asp:Label ID="lbl_rg" runat="server"></asp:Label>
                        </span></b>
                    &nbsp;
                </td>
                <td width="88" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                    border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit;
                    border-left-width: medium; border-top-style: none; border-top-color: inherit;
                    border-top-width: medium;" class="auto-style5">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Part:<asp:Label
                            ID="lbl_prt" runat="server"></asp:Label>
                        </span></b>
                </td>
                <td width="144" colspan="3" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                    border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit;
                    border-left-width: medium; border-top-style: none; border-top-color: inherit;
                    border-top-width: medium;" class="auto-style6">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Dt.<asp:Label
                            ID="lbl_dt" runat="server"></asp:Label>
                        </span></b>
                </td>
                <td width="119" valign="top" style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext;
                    border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit;
                    border-left-width: medium; border-top-style: none; border-top-color: inherit;
                    border-top-width: medium;" class="auto-style7" rowspan="2">
                    <asp:Label ID="lbl_vat_amt" Style="text-align: right; margin-left: 100px" runat="server"></asp:Label>
                    <asp:Label ID="lbl_add_amt" Style="text-align: right; margin-left: 107px" runat="server"></asp:Label>
                </td>
            </tr>
            <tr style="height: 15.35pt">
                <td width="434" colspan="9" valign="top" style="width: 325.35pt; height: 15.35pt;
                    border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none;
                    border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0; font-size: xx-small">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Excise
                            Duty in Words : </span></b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                                Rs.
                                <label id="lblmsg2" runat="server" />
                                </asp:Label> &nbsp;Only</span>
                </td>
            </tr>
            <tr>
                <td width="551" colspan="14" valign="top" style="width: 413.35pt; border-left: 1.0pt solid windowtext;
                    border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Amount
                            in Words : </span></b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                                Rs.
                                <label id="lblmsg" runat="server" />
                                </asp:Label> &nbsp;Only</span>
                </td>
                <td width="60" colspan="2" valign="top" style="width: 45.25pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">TOTAL</span></b>
                </td>
                <td width="119" valign="top" style="width: 89.0pt; border-left: medium none; border-right: 1.0pt solid windowtext;
                    border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="right" style="text-align: right; line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_net_amt" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="730" colspan="17" valign="top" style="width: 547.6pt; border-left: 1.0pt solid windowtext;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">TERMS
                            &amp; CONDITIONS</span></b></p>
                    <asp:Label ID="lbl_term_condition" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td width="551" colspan="14" valign="top" style="width: 413.35pt; border-left: 1.0pt solid windowtext;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" style="line-height: 100%; margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Excise
                            Declaration:</span></b></p>
                    <p class="MsoNormal" style="text-align: justify; line-height: 100%; margin: 0">
                        <asp:Label ID="lbl_ecc_declartion" runat="server"></asp:Label>
                </td>
                <td width="179" colspan="3" valign="top" style="width: 134.25pt; border-left: medium none;
                    border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext;
                    padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">F<b>or, Your
                            <asp:Label ID="lbl_company_nm" runat="server"></asp:Label>
                        </b></span>
                    </p>
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b></p>
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b></p>
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">&nbsp;</span></b></p>
                    <p class="MsoNormal" align="center" style="text-align: center; line-height: 100%;
                        margin: 0">
                        <b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">Authorized
                            Signatory</span></b>
                </td>
            </tr>
            <tr height="0">
                <td width="42" style="border: none">
                    &nbsp;
                </td>
                <td width="41" style="border: none">
                    &nbsp;
                </td>
                <td width="10" style="border: none">
                    &nbsp;
                </td>
                <td width="12" style="border: none">
                    &nbsp;
                </td>
                <td width="97" style="border: none">
                    &nbsp;
                </td>
                <td width="88" style="border: none">
                    &nbsp;
                </td>
                <td width="63" style="border: none">
                    &nbsp;
                </td>
                <td width="14" style="border: none">
                    &nbsp;
                </td>
                <td width="67" style="border: none">
                    &nbsp;
                </td>
                <td width="3" style="border: none">
                    &nbsp;
                </td>
                <td style="border: none" class="style8">
                    &nbsp;
                </td>
                <td width="17" style="border: none">
                    &nbsp;
                </td>
                <td width="59" style="border: none">
                    &nbsp;
                </td>
                <td width="43" style="border: none">
                    &nbsp;
                </td>
                <td width="23" style="border: none">
                    &nbsp;
                </td>
                <td width="37" style="border: none">
                    &nbsp;
                </td>
                <td width="118" style="border: none">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
