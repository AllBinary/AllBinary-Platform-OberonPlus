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
// package tags
unit StoreValidationTransformTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationTransformTag;

type
  {AB:TYPES}
  TStoreValidationTransformTag = class(TValidationTransformTag)
  public
    logUtil: TLogUtil;
    storeName: string;
    procedure InitFields;
        constructor Create;
        procedure setStoreName(value: string); virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  StoreFrontData, AbResponseHandler;


{AB:CODE}

procedure TStoreValidationTransformTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TStoreValidationTransformTag.Create;
begin
        inherited Create();
        InitFields;
end;
    

procedure TStoreValidationTransformTag.setStoreName(value: string);
begin
        Self.storeName := value;
        Self.getPropertiesHashMap().put(TStoreFrontData.getInstance().NAME, Self.storeName);
end;
    

// throws JspTagException
function TStoreValidationTransformTag.doStartTag: Integer;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                Self.logUtil.putF('Tag Start', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            Exit(inherited doStartTag());
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

