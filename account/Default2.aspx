<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>DELIVERY CHALLAN</title>
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
    .style1
    {
        width: 56px;
    }
    .style2
    {
        height: 128pt;
        width: 56px;
    }
    .style3
    {
        width: 256.75pt;
        height: 128pt;
    }
    .style4
    {
        width: 90.0pt;
        height: 128pt;
    }
    .style5
    {
        height: 128pt;
    }
-->
</style>
</head>

<body>

    <form id="form1" runat="server">

<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
<span lang="EN-US" style="font-size: 8.0pt">&nbsp; </span></p>
<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
<span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
<span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
<span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
<span lang="EN-US" style="font-size: 8.0pt">&nbsp;</span></p>
<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="504" style="border-collapse: collapse; border: medium none; margin-left: .75pt">
	<tr>
		<td width="384" colspan="9" valign="top" style="width: 288.0pt; border-left: medium none; border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 12.0pt; font-family: Arial,sans-serif">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DELIVERY CHALLAN</span></b></td>
		<td width="120" valign="top" style="width: 90.0pt; border-left: medium none; border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" align="right" style="text-align: right; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 10.0pt; font-family: Arial,sans-serif">
		</span></b></td>
		<td style="border: medium none" width="0">
		<p class="MsoNormal">&nbsp;</td>
	</tr>
	<tr>
		<td width="234" colspan="4" rowspan="4" valign="top" style="width: 175.5pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal; direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
		<span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		Name &amp; Address of Buyer</span></p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <b><span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_puch_party" runat="server"></asp:Label>
                        </span></b></p>
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
                        </span></p>
                    <p align="right" class="MsoNormal" dir="RTL" style="margin-bottom:0in;margin-bottom:
  .0001pt;text-align:left;line-height:normal;direction:rtl;unicode-bidi:embed">
                        <span dir="LTR" style="font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:
  minor-bidi;mso-hansi-theme-font:minor-bidi;mso-bidi-font-family:Arial;
  mso-bidi-theme-font:minor-bidi">VAT TIN No.: 
                        <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_vat_puch_no" runat="server"></asp:Label>
                        </span>
                        </span></p>
                    <p align="right" class="MsoNormal" dir="RTL" style="margin-bottom:0in;margin-bottom:
  .0001pt;text-align:left;line-height:normal;direction:rtl;unicode-bidi:embed">
                        <span dir="LTR" style="font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:
  minor-bidi;mso-hansi-theme-font:minor-bidi;mso-bidi-font-family:Arial;
  mso-bidi-theme-font:minor-bidi">CST TIN No.: </span>
                        <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_puch_cst_no" runat="server"></asp:Label>
                        </span>
                    </p>
                    <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                        <span style="font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;
  mso-ascii-theme-font:minor-bidi;mso-hansi-theme-font:minor-bidi;mso-bidi-font-family:
  Arial;mso-bidi-theme-font:minor-bidi">ECC No.: </span>
                        <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_ecc_puch_no" runat="server"></asp:Label>
                        </span>
                    </p>
                </td>
		<td width="150" colspan="5" valign="top" style="width: 112.5pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		Delivery Challan No.</span></b></p>
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                        <asp:Label ID="lbl_dc_no" style="font-size:small" runat="server"></asp:Label>
                    </td>
		<td width="120" valign="top" style="width: 90.0pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		Date</span></b></p>
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                        <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                        <asp:Label ID="lbl_dc_dt" runat="server"></asp:Label>
                        </span>
                    </td>
		<td style="border: medium none" width="0">
		<p class="MsoNormal">&nbsp;</td>
	</tr>
	<tr>
		<td width="150" colspan="5" valign="top" style="width: 112.5pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		Order No.</span></b></p>
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                        <asp:Label ID="lbl_odr_no" style="font-size:small" runat="server"></asp:Label>
                    </td>
		<td width="120" valign="top" style="width: 90.0pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		Date</span></b></p>
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                        <asp:Label ID="lbl_odr_dt" style="font-size:small" runat="server"></asp:Label>
                    </td>
		<td style="border: medium none" width="0">
		<p class="MsoNormal">&nbsp;</td>
	</tr>
	<tr>
		<td width="150" colspan="5" valign="top" style="width: 112.5pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		Dispatched Through</span></b></p>
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                        <asp:Label ID="lbl_deshpath" style="font-size:small" runat="server"></asp:Label>
                    </td>
		<td width="120" valign="top" style="width: 90.0pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		Vehicle No</span></b><span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">.</span></p>
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                        <asp:Label ID="lbl_vihical_no" style="font-size:small" runat="server"></asp:Label>
                    </td>
		<td style="border: medium none" width="0">
		<p class="MsoNormal">&nbsp;</td>
	</tr>
	<tr style="height: 10.35pt">
		<td width="150" colspan="5" rowspan="2" valign="top" style="width: 112.5pt; height: 10.35pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		From</span></b></p>
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                       <asp:Label ID="lbl_to" style="font-size:small" runat="server"> </asp:Label>
                    </td>
		<td width="120" rowspan="2" valign="top" style="width: 90.0pt; height: 10.35pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		To</span></b></p>
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                        
            <asp:Label ID="lbl_from" style="font-size:small" runat="server"></asp:Label>
                    </td>
		<td style="height: 10.35pt; border: medium none" width="0" height="14">
		</td>
	</tr>
	<tr style="height: 11.65pt">
		<td width="234" colspan="4" rowspan="4" valign="top" style="width: 175.5pt; height: 11.65pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: normal; direction: rtl; unicode-bidi: embed; margin-bottom: .0001pt">
		<span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		Name &amp; Address of Consignee</span></p>
                    <p class="MsoNormal" align="right" dir="RTL" style="text-align: left; line-height: 100%;
                        direction: rtl; unicode-bidi: embed; margin: 0">
                        <b><span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_cuni_nm" runat="server"></asp:Label>
                        </span></b></p>
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
                        </span></p>
                    <p align="right" class="MsoNormal" dir="RTL" style="margin-bottom:0in;margin-bottom:
  .0001pt;text-align:left;line-height:normal;direction:rtl;unicode-bidi:embed">
                        <span dir="LTR" style="font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:
  minor-bidi;mso-hansi-theme-font:minor-bidi;mso-bidi-font-family:Arial;
  mso-bidi-theme-font:minor-bidi">VAT TIN No.: </span>
                        <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_cuni_vat" runat="server"></asp:Label>
                        </span>
                    </p>
                    <p align="right" class="MsoNormal" dir="RTL" style="margin-bottom:0in;margin-bottom:
  .0001pt;text-align:left;line-height:normal;direction:rtl;unicode-bidi:embed">
                        <span dir="LTR" style="font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:
  minor-bidi;mso-hansi-theme-font:minor-bidi;mso-bidi-font-family:Arial;
  mso-bidi-theme-font:minor-bidi">CST TIN No.: </span>
                        <span lang="EN-US" dir="LTR" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_cuni_cst" runat="server"></asp:Label>
                        </span>
                    </p>
                    <p align="right" class="MsoNormal" dir="RTL" style="margin-bottom:0in;margin-bottom:
  .0001pt;text-align:left;line-height:normal;direction:rtl;unicode-bidi:embed">
                        <span dir="LTR" style="font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:
  minor-bidi;mso-hansi-theme-font:minor-bidi;mso-bidi-font-family:Arial;
  mso-bidi-theme-font:minor-bidi">ECC No.: </span>
                        <span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
                            <asp:Label ID="lbl_cuni_ecc" runat="server"></asp:Label>
                        </span>
                    </p>
                </td>
		<td style="height: 11.65pt; border: medium none" width="0" height="16">
		</td>
	</tr>
	<tr style="height: 23.25pt">
		<td width="150" colspan="5" valign="top" style="width: 112.5pt; height: 23.25pt; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></td>
		<td width="120" valign="top" style="width: 90.0pt; height: 23.25pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></td>
		<td style="height: 23.25pt; border: medium none" width="0" height="31">&nbsp;</td>
	</tr>
	<tr style="height: 23.25pt">
		<td width="150" colspan="5" valign="top" style="width: 112.5pt; height: 23.25pt; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></b></td>
		<td width="120" valign="top" style="width: 90.0pt; height: 23.25pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></b></td>
		<td style="height: 23.25pt; border: medium none" width="0" height="31">&nbsp;</td>
	</tr>
	<tr style="height: 23.25pt">
		<td width="150" colspan="5" valign="top" style="width: 112.5pt; height: 23.25pt; border-left: medium none; border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></b></td>
		<td width="120" valign="top" style="width: 90.0pt; height: 23.25pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></b></td>
		<td style="height: 23.25pt; border: medium none" width="0" height="31">&nbsp;</td>
	</tr>
	<tr>
		<td valign="top" 
            style="padding: 0cm 5.4pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; border-top-style: none; border-top-color: inherit; border-top-width: medium;" 
            class="style1">
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		Sr. No.</span></b></td>
		<td width="342" colspan="8" valign="top" style="width: 256.75pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		Description</span></b></td>
		<td width="120" valign="top" style="width: 90.0pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		Quantity</span></b></td>
		<td style="border: medium none" width="0">
		<p class="MsoNormal">&nbsp;</td>
	</tr>
	<tr>
		<td valign="top" 
            style="padding: 0cm 5.4pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; border-top-style: none; border-top-color: inherit; border-top-width: medium;" 
            class="style2">
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 10pt; font-family: Arial,sans-serif">
                 
                        <asp:Label ID="lbl_sr"  runat="server"></asp:Label>
		</span></b></td>
		<td width="342" colspan="8" valign="top" 
            style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit; border-left-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" 
            class="style3">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                    <asp:Label ID="lbl_itm_nm" style="font-size:small" runat="server"></asp:Label>
                    </p>
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></b></td>
		<td width="120" valign="top" 
            style="padding: 0cm 5.4pt; border-right: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; border-left-style: none; border-left-color: inherit; border-left-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" 
            class="style4">
		<p class="MsoNormal" align="right" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
                        <asp:Label ID="lbl_qty" style="font-size:small" runat="server"></asp:Label>
                    </td>
		<td style="border-style: none; border-color: inherit; border-width: medium;" 
            width="0" class="style5"></td>
	</tr>
	<tr>
		<td valign="top" 
            style="padding: 0cm 5.4pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; border-top-style: none; border-top-color: inherit; border-top-width: medium;" 
            class="style1">
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></b></td>
		<td width="342" colspan="8" valign="top" style="width: 256.75pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" align="right" style="text-align: right; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		TOTAL</span></b></td>
		<td width="120" valign="top" style="width: 90.0pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" align="right" style="text-align: center;font-weight:bold; line-height: normal; margin-bottom: .0001pt">
                        <asp:Label ID="lbl_tt_qty" runat="server"></asp:Label>
                    </td>
		<td style="border: medium none" width="0">
		<p class="MsoNormal">&nbsp;</td>
	</tr>
	<tr style="height: 3.5pt">
		<td width="78" colspan="2" valign="top" style="width: 58.8pt; height: 3.5pt; border-left: 1.0pt solid windowtext; border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		VAT No.</span></b></p>
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		CST No.</span></b></p>
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		EXCISE No.</span></b></td>
		<td width="18" valign="top" style="width: 13.55pt; height: 3.5pt; border-left: medium none; border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" align="right" style="text-align: right; line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		:</span></p>
		<p class="MsoNormal" align="right" style="text-align: right; line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		:</span></p>
		<p class="MsoNormal" align="right" style="text-align: right; line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		:</span></td>
		<td width="138" colspan="2" valign="top" style="width: 103.6pt; height: 3.5pt; border-left: medium none; border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                        <asp:Label ID="lbl_cmp_vat" style="font-size:x-small" runat="server"></asp:Label>
                    </p>
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                        <asp:Label ID="lbl_cst_no" style="font-size:x-small" runat="server"></asp:Label>
                    </p>
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
                        <asp:Label ID="lbl_exc_no" style="font-size:x-small" runat="server"></asp:Label>
                        </td>
		<td width="78" colspan="2" valign="top" style="width: 58.55pt; height: 3.5pt; border-left: medium none; border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></b></td>
		<td width="24" valign="top" style="width: 18.0pt; height: 3.5pt; border-left: medium none; border-right: medium none; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" align="right" style="text-align: right; line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></td>
		<td width="167" colspan="2" valign="top" style="width: 125.5pt; height: 3.5pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></td>
		<td style="height: 3.5pt; border: medium none" width="0" height="5">
		</td>
	</tr>
	<tr>
		<td width="300" colspan="6" valign="top" style="width: 225.0pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" style="text-align: justify; line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></p>
		<p class="MsoNormal" style="text-align: justify; line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		Please Sign and return the duplicate copy on acknowledgement of having 
		received the material mentioned above in goods condition.</span></p>
		<p class="MsoNormal" style="text-align: justify; line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></p>
		<p class="MsoNormal" style="text-align: justify; line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></p>
		<p class="MsoNormal" style="text-align: justify; line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 8.0pt; font-family: Arial,sans-serif">
		Receivers Signature with Stamp.</span></td>
		<td width="204" colspan="4" valign="top" style="width: 153.0pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		F<b>or, <asp:Label ID="lbl_cmp" runat="server"></asp:Label></b></span></p>
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></b></p>
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></b></p>
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></b></p>
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		&nbsp;</span></b></p>
		<p class="MsoNormal" align="center" style="text-align: center; line-height: normal; margin-bottom: .0001pt">
		<b>
		<span lang="EN-US" style="font-size: 9.0pt; font-family: Arial,sans-serif">
		Authorized Signatory</span></b></td>
		<td style="border: medium none" width="0">
		<p class="MsoNormal">&nbsp;</td>
	</tr>
	<tr height="0">
		<td style="border: medium none" class="style1">&nbsp;</td>
		<td width="37" style="border: medium none">&nbsp;</td>
		<td width="18" style="border: medium none">&nbsp;</td>
		<td width="138" style="border: medium none">&nbsp;</td>
		<td width="1" style="border: medium none"></td>
		<td width="65" style="border: medium none">&nbsp;</td>
		<td width="13" style="border: medium none">&nbsp;</td>
		<td width="24" style="border: medium none">&nbsp;</td>
		<td width="47" style="border: medium none">&nbsp;</td>
		<td width="120" style="border: medium none">&nbsp;</td>
		<td style="border: medium none" width="0">
		<p class="MsoNormal">&nbsp;</td>
	</tr>
</table>
<p class="MsoNormal">
<span lang="EN-US" style="font-size: 9.0pt; line-height: 107%; font-family: Arial,sans-serif">
&nbsp;</span></p>

    </form>

</body>

</html>
