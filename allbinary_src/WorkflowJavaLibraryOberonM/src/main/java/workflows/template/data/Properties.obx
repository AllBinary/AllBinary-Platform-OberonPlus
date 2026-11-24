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
// package workflows.template.data
unit Properties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TProperties = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
        constructor Create;
        function getPropertiesHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function doEndTag: Integer; virtual;
  end;

implementation
uses
  StdUtil;


{AB:CODE}

procedure TProperties.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;
    

constructor TProperties.Create;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF('Start/Tag', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.propertiesHashMap := TStdUtil.getInstance().createHashMap();
end;
    

function TProperties.getPropertiesHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.propertiesHashMap);
end;
    

function TProperties.doEndTag: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF('Tag Ended', TJava.Box(Self), 'doEndTag');
        end;
        Self.propertiesHashMap := TStdUtil.getInstance().createHashMap();
        Exit(TTagSupport.EVAL_PAGE);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

