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
// package org.allbinary.logic.visual.transform.info.objectConfig.generator
unit BasicGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoObjectConfigGenerator;

type
  {AB:TYPES}
  TBasicGenerator = class(TTransformInfoObjectConfigGenerator)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        function process(input: string): string; virtual;
  end;

implementation

{AB:CODE}

procedure TBasicGenerator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TBasicGenerator.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TBasicGenerator.process(input: string): string;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Processing', TJava.Box(Self), Self.commonStrings.PROCESS);
        end;
        Exit(input);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

