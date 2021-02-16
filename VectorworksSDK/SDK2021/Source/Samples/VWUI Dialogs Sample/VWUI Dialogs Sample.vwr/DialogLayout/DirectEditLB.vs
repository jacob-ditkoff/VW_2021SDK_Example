{**********************************************
	This file was automatically generated 2019:11:01T17:11:00
	
	DO NOT EDIT THIS FILE -- Use Dialog Builder Tools to edit this file.
***********************************************}


PROCEDURE DirectEditLB;
CONST
    {Alignment constants}
    kRight                = 1;
    kBottom               = 2;
    kLeft                 = 3;
    kColumn               = 4;
    kResize               = 0;
    kShift                = 1;

    { default and cancel button IDs}
    kOK                   = 1;
    kCancel               = 2;

    { control IDs}
    kListBr               = 4;

VAR
    dialog            :INTEGER;
    cnt               :INTEGER;

FUNCTION GetStr(ndx :STRING) :STRING;
BEGIN
    GetVWRString(GetStr, 'VWUI Dialogs Sample/Strings/DirectEditLB.vwstrings', ndx);
END;

BEGIN
    dialog := CreateResizableLayout(GetStr('dialog_title'), TRUE, GetStr('ok_button'), GetStr('cancel_button'), TRUE, TRUE );

    {create controls}
    CreateLB( dialog, kListBr, 80, 15 );

    {set relations}
    SetFirstLayoutItem( dialog, kListBr );

    {set alignments}

    {set bindings}

    {set help strings}
    SetHelpText(dialog, kOK, GetStr('ok_button_help'));
    SetHelpText(dialog, kCancel, GetStr('cancel_button_help'));
    SetHelpText(dialog, kListBr, GetStr('kListBr_help'));
    

    { uncomment to test the script
    IF RunLayoutDialog( dialog, NIL ) = 1 then BEGIN
    END;}

END;
RUN( DirectEditLB );

{XML defintion of the layout}
{<BEGIN_XML>
<?xml version="1.0" encoding="UTF-8" standalone="no" ?>
<DialogBuilder>

  <LayoutData>
    <Name>DirectEditLB</Name>
    <Title>Edit List browser</Title>
    <OKText>OK</OKText>
    <OKHelpText>Accepts the dialog data.</OKHelpText>
    <CancelText>Cancel</CancelText>
    <CancelHelpText>Cancels the dialog data.</CancelHelpText>
    <StringsStartID>0</StringsStartID>
    <HelpStrStartID>1</HelpStrStartID>
    <TablesAddToDlgRes>TRUE</TablesAddToDlgRes>
    <AltStringStartID>0</AltStringStartID>
    <ResourceRoot>VWUI Dialogs Sample</ResourceRoot>
  </LayoutData>

  <Controls>
    <Control name="DialogBuilderControl" x="-81" y="53">
      <Parameter Name="__UUID">%LB43AA7589-FB24-11E9-967C-7085C2525D37%RB</Parameter>
      <Parameter Name="type">kListBrowser</Parameter>
      <Parameter Name="id">4</Parameter>
      <Parameter Name="constName">ListBr</Parameter>
      <Parameter Name="helpText">List broser helpt text</Parameter>
      <Parameter Name="bindLeft">kNone</Parameter>
      <Parameter Name="bindRight">kNone</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="ctrlWidth">80</Parameter>
      <Parameter Name="ctrlLinesCnt">15</Parameter>
      <Parameter Name="renderMode">Wireframe</Parameter>
      <Parameter Name="viewMode">Top/Plan</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">48mm</Parameter>
      <Parameter Name="ControlPoint00Y">-12mm</Parameter>
      <Parameter Name="ControlPoint01X">24mm</Parameter>
      <Parameter Name="ControlPoint01Y">-24mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__savedHandleRightX">48mm</Parameter>
      <Parameter Name="__savedHandleRightY">-12mm</Parameter>
      <Parameter Name="__savedHandleBottomX">24mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-24mm</Parameter>
      <Parameter Name="__fVisControlWidth">48</Parameter>
      <Parameter Name="__fVisControlHeight">24</Parameter>
    </Control>
  </Controls>

</DialogBuilder>

<END_XML>}

