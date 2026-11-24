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
// package tags.generic
unit GenericViewTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformTag;

type
  {AB:TYPES}
  TGenericViewTag = class(TTransformTag)
  public
    logUtil: TLogUtil;
    output: string;
    file_: string;
    procedure InitFields;
        constructor Create;
        procedure setOutput(value: string); virtual;
        procedure setFile(value: string); virtual;
  end;

implementation
uses
  InputOutputTypeData;


{AB:CODE}

procedure TGenericViewTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor TGenericViewTag.Create;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

procedure TGenericViewTag.setOutput(value: string);
begin
        Self.output := value;
        Self.getPropertiesHashMap().put(TInputOutputTypeData.getInstance().NAME, Self.output);
end;
    

procedure TGenericViewTag.setFile(value: string);
begin
        Self.file_ := value;
        Self.getPropertiesHashMap().put(TInputOutputTypeData.getInstance().FILE_, Self.file_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

