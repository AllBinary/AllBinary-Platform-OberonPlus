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
unit TransformInfoObjectConfigGeneratorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, TransformInfoObjectConfigGenerator, TransformInfoObjectConfigGeneratorFactoryInterface;

type
  {AB:TYPES}
  TTransformInfoObjectConfigGeneratorFactory = class(TInterfacedObject, ITransformInfoObjectConfigGeneratorFactoryInterface)
  public
    logUtil: TLogUtil;
    class var instance: TTransformInfoObjectConfigGeneratorFactory;
    procedure InitFields;
    function JavaObject: TObject;
        class function getInstance: TTransformInfoObjectConfigGeneratorFactory; overload; static;
        constructor Create;
        function getInstance(transformInfoInterface_: ITransformInfoInterface): TTransformInfoObjectConfigGenerator; overload; virtual;
  end;

implementation
uses
  StoreFileGenerator, BasicGenerator, InputOutputTypeData, CommonStrings;


{AB:CODE}

procedure TTransformInfoObjectConfigGeneratorFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TTransformInfoObjectConfigGeneratorFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TTransformInfoObjectConfigGeneratorFactory.getInstance: TTransformInfoObjectConfigGeneratorFactory;
begin
        Exit(TTransformInfoObjectConfigGeneratorFactory.instance);
end;
    

constructor TTransformInfoObjectConfigGeneratorFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TTransformInfoObjectConfigGeneratorFactory.getInstance(transformInfoInterface_: ITransformInfoInterface): TTransformInfoObjectConfigGenerator;
var
  type_: string;
  commonStrings_: TCommonStrings;
begin
        type_ := TJava.UnboxString(TJava.ToObject(transformInfoInterface_.getObjectConfigInterface().getOutputTypeName()));
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF('Generating Instance for type: ' + type_, TJava.Box(Self), commonStrings_.GET_INSTANCE);
        end;
        if (((type_) = ('')) or ((CompareStr(type_, TInputOutputTypeData.getInstance().RESPONSE)) = (0))) or (transformInfoInterface_.isChild()) then begin
            Exit(TBasicGenerator.Create());
        end else if (CompareStr(type_, TInputOutputTypeData.getInstance().FILE_)) = (0) then begin
            Exit(TStoreFileGenerator.Create(transformInfoInterface_));
        end else begin
            raise SysUtils.Exception.Create('No Such TransformInfoObjectConfigGenerator Type');
        end;
end;

initialization
  {AB:INITIALIZATION}
  TTransformInfoObjectConfigGeneratorFactory.instance := TTransformInfoObjectConfigGeneratorFactory.Create();
  {AB:END}

end.

