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
unit PropertiesTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommandTag;

type
  {AB:TYPES}
  TPropertiesTag = class(TCommandTag)
  public
    logUtil: TLogUtil;
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

procedure TPropertiesTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TPropertiesTag.Create;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.propertiesHashMap := TStdUtil.getInstance().createHashMap();
end;
    

function TPropertiesTag.getPropertiesHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.propertiesHashMap);
end;
    

function TPropertiesTag.doEndTag: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF('Tag Ended', TJava.Box(Self), 'doEndTag');
        end;
        Self.propertiesHashMap := TStdUtil.getInstance().createHashMap();
        Exit(EVAL_PAGE);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

