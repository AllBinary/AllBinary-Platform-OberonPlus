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
unit InventoryTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TableTag;

type
  {AB:TYPES}
  TInventoryTag = class(TTableTag)
  public
    storeName: string;
    procedure InitFields;
        constructor Create;
        procedure setStoreName(value: string); virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  ParentInventoryTagHelper, AbTagData, InventoryHelperFactory, InventoryRequestHelperFactory, StoreFrontData, AbResponseHandler;


{AB:CODE}

procedure TInventoryTag.InitFields;
begin
  
end;
    

constructor TInventoryTag.Create;
begin
        inherited Create();
        InitFields;
        Self.setTagHelperFactory(TInventoryHelperFactory.Create());
        Self.setTagRequestHelperFactory(TInventoryRequestHelperFactory.Create());
end;
    

procedure TInventoryTag.setStoreName(value: string);
begin
        Self.storeName := value;
end;
    

// throws JspTagException
function TInventoryTag.doStartTag: Integer;
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
                        Self.getPropertiesHashMap().put(TStoreFrontData.getInstance().NAME, Self.storeName);
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

