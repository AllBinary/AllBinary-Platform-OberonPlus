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
// package org.allbinary.data.tables.transform.info
unit TransformInfoEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TransformInfoFactoryInterface, TransformInfoObjectConfigAndManipulatorFactoryBase, TransformInfoObjectConfigGeneratorFactoryInterface, TransformInfoEntity;

type
  {AB:TYPES}
  TTransformInfoEntityFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(transformInfoObjectConfigGeneratorFactoryInterface_: ITransformInfoObjectConfigGeneratorFactoryInterface; transformInfoObjectConfigAndManipulatorFactoryInterface: TTransformInfoObjectConfigAndManipulatorFactoryBase; transformInfoFactoryInterface_: ITransformInfoFactoryInterface): TTransformInfoEntity; static;
  end;

implementation
uses
  LogUtil, CommonStrings;


{AB:CODE}
    

constructor TTransformInfoEntityFactory.Create;
begin
    inherited Create;
end;
    

class function TTransformInfoEntityFactory.getInstance(transformInfoObjectConfigGeneratorFactoryInterface_: ITransformInfoObjectConfigGeneratorFactoryInterface; transformInfoObjectConfigAndManipulatorFactoryInterface: TTransformInfoObjectConfigAndManipulatorFactoryBase; transformInfoFactoryInterface_: ITransformInfoFactoryInterface): TTransformInfoEntity;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            Exit(TTransformInfoEntity.Create(transformInfoObjectConfigGeneratorFactoryInterface_, transformInfoObjectConfigAndManipulatorFactoryInterface, transformInfoFactoryInterface_));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box('TransformInfoEntityFactory'), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

