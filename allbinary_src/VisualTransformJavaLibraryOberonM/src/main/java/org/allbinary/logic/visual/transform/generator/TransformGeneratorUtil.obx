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
// package org.allbinary.logic.visual.transform.generator
unit TransformGeneratorUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, TransformInfoDomNode, TransformInfoInterface;

type
  {AB:TYPES}
  TTransformGeneratorUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TTransformGeneratorUtil;
    procedure InitFields;
        class function getInstance: TTransformGeneratorUtil; static;
        constructor Create;
        procedure generate(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; ownerTransformInfoInterface: ITransformInfoInterface); overload; virtual;
        procedure generate(abeClientInformation: IAbeClientInformationInterface; transformInfoDomNode_: TTransformInfoDomNode; ownerTransformInfoInterface: ITransformInfoInterface); overload; virtual;
  end;

implementation
uses
  InputOutputTypeData, TransformFactory, TransformInterface, TransformInfoHttpInterface, StoreFileGenerator;


{AB:CODE}

procedure TTransformGeneratorUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TTransformGeneratorUtil.getInstance: TTransformGeneratorUtil;
begin
        Exit(TTransformGeneratorUtil.instance);
end;
    

constructor TTransformGeneratorUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TTransformGeneratorUtil.generate(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; ownerTransformInfoInterface: ITransformInfoInterface);
var
  componentInterface: ITransformInterface;
  result_: string;
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  inputOutputTypeData_: TInputOutputTypeData;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Generating View: ' + transformInfoInterface_.getName(), TJava.Box(Self), 'generate()');
            end;
            componentInterface := TTransformFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface_.getName(), ownerTransformInfoInterface);
            result_ := componentInterface.view();
            httpTransformInfoInterface := (TJava.ToObject(componentInterface.getTransformInfoInterface()) as ITransformInfoHttpInterface);
            inputOutputTypeData_ := TInputOutputTypeData.getInstance();
            if ((Pos(TJava.ToString('<HTML>'), result_) - 1)) >= (0) then begin
                httpTransformInfoInterface.getPropertiesHashMap().put(inputOutputTypeData_.NAME, inputOutputTypeData_.DEFAULT);
            end else begin
                httpTransformInfoInterface.getPropertiesHashMap().put(inputOutputTypeData_.NAME, inputOutputTypeData_.DEFAULT_FRAGMENT);
            end;
            TStoreFileGenerator.Create(componentInterface.getTransformInfoInterface()).process(result_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to generate a view', TJava.Box(Self), 'generate()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TTransformGeneratorUtil.generate(abeClientInformation: IAbeClientInformationInterface; transformInfoDomNode_: TTransformInfoDomNode; ownerTransformInfoInterface: ITransformInfoInterface);
begin
        Self.generate(abeClientInformation, transformInfoDomNode_.getTransformInfoInterface(), ownerTransformInfoInterface);
end;

initialization
  {AB:INITIALIZATION}
  TTransformGeneratorUtil.instance := TTransformGeneratorUtil.Create();
  {AB:END}

end.

