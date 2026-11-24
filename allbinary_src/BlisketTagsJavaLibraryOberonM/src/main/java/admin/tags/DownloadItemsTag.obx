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
// package admin.tags
unit DownloadItemsTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TableTag;

type
  {AB:TYPES}
  TDownloadItemsTag = class(TTableTag)
  public
        constructor Create;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  ParentInventoryTagHelper, AbTagData, DownloadItemsHelperFactory, DownloadItemsRequestHelperFactory, AbResponseHandler;


{AB:CODE}
    

constructor TDownloadItemsTag.Create;
begin
    inherited Create;
        Self.setTagHelperFactory(TDownloadItemsHelperFactory.Create());
        Self.setTagRequestHelperFactory(TDownloadItemsRequestHelperFactory.Create());
end;
    

// throws JspTagException
function TDownloadItemsTag.doStartTag: Integer;
var
  parentTag: TTag;
begin
        try
            if Self.isEnabled() then begin
                if not TJava.IsNull(Self.getCommand()) then begin
                    if ((((Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.BACKUP)) <> (0)) and ((Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.RESTORE)) <> (0))) and ((Self.getCommand().compareTo(Self.commonStrings.CREATE_)) <> (0))) and ((Self.getCommand().compareTo(Self.commonStrings.DROP)) <> (0)) then begin
                        parentTag := Self.getParent();
                        TParentInventoryTagHelper.getInstance().isValid(Self, parentTag);
                        Self.getPropertiesHashMap().put(TAbTagData.PARENT, parentTag);
                    end;
                    Exit(inherited doStartTag());
                end;
            end;
            Exit(SKIP_BODY);
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

