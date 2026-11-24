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
// package views
unit ValidationOnlyTempUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface;

type
  {AB:TYPES}
  // Replace when validation node is added
  TValidationOnlyTempUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TValidationOnlyTempUtil;
    procedure InitFields;
        class function getInstance: TValidationOnlyTempUtil; static;
        constructor Create;
        function view(validationComponentInterface_: IValidationComponentInterface): string; virtual;
  end;

implementation
uses
  StringUtil, CommonStrings;


{AB:CODE}

procedure TValidationOnlyTempUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TValidationOnlyTempUtil.getInstance: TValidationOnlyTempUtil;
begin
        Exit(TValidationOnlyTempUtil.instance);
end;
    

constructor TValidationOnlyTempUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TValidationOnlyTempUtil.view(validationComponentInterface_: IValidationComponentInterface): string;
var
  commonStrings_: TCommonStrings;
begin
        commonStrings_ := TCommonStrings.getInstance();
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('View Name: ' + validationComponentInterface_.getTransformInfoInterface().getName(), TJava.Box(Self), 'view()');
            end;
            Exit(TStringUtil.getInstance().EMPTY_STRING);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TValidationOnlyTempUtil.instance := TValidationOnlyTempUtil.Create();
  {AB:END}

end.

