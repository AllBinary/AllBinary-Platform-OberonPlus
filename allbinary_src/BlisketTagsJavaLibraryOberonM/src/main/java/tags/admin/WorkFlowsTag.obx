{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package tags.admin
unit WorkFlowsTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreValidationTransformTag;

type
  {AB:TYPES}
  TWorkFlowsTag = class(TStoreValidationTransformTag)
  public
        constructor Create;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  AbResponseHandler;


{AB:CODE}
    

constructor TWorkFlowsTag.Create;
begin
    inherited Create;
end;
    

// throws JspTagException
function TWorkFlowsTag.doStartTag: Integer;
begin
        try
            if not TJava.IsNull(Self.getCommand()) then begin
                if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.NEW_)) = (0) then begin
                    Self.setName('New WorkFlow View');
                    Self.setObjectFile('views.admin.workflow.NewView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.INSERT)) = (0) then begin
                    Self.setName('Add Validation WorkFlow View');
                    Self.setObjectFile('views.admin.workflow.AddValidationView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.VIEW)) = (0) then begin
                    Self.setName('Validation WorkFlow View');
                    Self.setObjectFile('views.admin.workflow.WorkflowsValidationView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.EDIT)) = (0) then begin
                    Self.setName('Validation WorkFlow View');
                    Self.setObjectFile('views.admin.workflow.EditValidationView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.UPDATE)) = (0) then begin
                    Self.setName('Update Validation WorkFlow View');
                    Self.setObjectFile('views.admin.workflow.UpdateValidationView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.DELETE_)) = (0) then begin
                    Self.setName('Delete Validation WorkFlow View');
                    Self.setObjectFile('views.admin.workflow.DeleteValidationView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.BACKUP)) = (0) then begin
                    raise SysUtils.Exception.Create('View not implemented');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.RESTORE)) = (0) then begin
                    raise SysUtils.Exception.Create('View not implemented');
                end else if (Self.getCommand().compareTo(Self.commonStrings.DROP)) = (0) then begin
                    raise SysUtils.Exception.Create('View not implemented');
                end else if (Self.getCommand().compareTo(Self.commonStrings.CREATE_)) = (0) then begin
                    raise SysUtils.Exception.Create('View not implemented');
                end else begin
                    raise SysUtils.Exception.Create('No Such View Command: ' + TJava.ToString(Self.getCommand()));
                end;
                Exit(inherited doStartTag());
            end;
            raise SysUtils.Exception.Create('Command Null');
        except
            on e: SysUtils.Exception do begin
            TAbResponseHandler.sendJspTagRedirect(Self.pageContext, e);
            Exit(SKIP_BODY);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

