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
// package admin.taghelpers
unit CustomLoaderHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TCustomLoaderHelper = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        constructor Create; overload;
        function getWebappPath: string; virtual;
        procedure setWebappPath(path: string); virtual;
  end;

implementation
uses
  AppUrlGlobals, URLGLOBALS;


{AB:CODE}

procedure TCustomLoaderHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

constructor TCustomLoaderHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
end;
    

constructor TCustomLoaderHelper.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TCustomLoaderHelper.getWebappPath: string;
begin
        try
            Exit(Torg.allbinary.globals.URLGLOBALS.getWebappPath());
        except
            on e: SysUtils.Exception do begin
            Exit(nil);
            end;
        end;
end;
    

// throws Exception
procedure TCustomLoaderHelper.setWebappPath(path: string);
var
  urlGlobals_: TAppUrlGlobals;
begin
        try
            urlGlobals_ := TAppUrlGlobals.Create();
            urlGlobals_.setWebappPath(path);
            TURLGLOBALS.init(urlGlobals_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setWebappPath()', TJava.Box(e));
            end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

