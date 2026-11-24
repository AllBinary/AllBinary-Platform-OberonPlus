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
unit TransformsGeneratorUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, TransformInfoInterface, TransformInfoObjectConfigInterface;

type
  {AB:TYPES}
  TTransformsGeneratorUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TTransformsGeneratorUtil;
    procedure InitFields;
        class function getInstance: TTransformsGeneratorUtil; static;
        constructor Create;
        function generateComponentsFromObjectConfig(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; group: string): string; overload; virtual;
        function generateComponentsFromObjectConfig(abeClientInformation: IAbeClientInformationInterface; transformInfoObjectConfigInterface_: ITransformInfoObjectConfigInterface; transformInfoInterface_: ITransformInfoInterface; group: string): string; overload; virtual;
  end;

implementation
uses
  TransformGeneratorUtil, BasicArrayList, BasicArrayListD, StringMaker, TransformInfoDomNode;


{AB:CODE}

procedure TTransformsGeneratorUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TTransformsGeneratorUtil.getInstance: TTransformsGeneratorUtil;
begin
        Exit(TTransformsGeneratorUtil.instance);
end;
    

constructor TTransformsGeneratorUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TTransformsGeneratorUtil.generateComponentsFromObjectConfig(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; group: string): string;
var
  transformInfoObjectConfigInterface_: ITransformInfoObjectConfigInterface;
  result_: string;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Started Group: ' + group, TJava.Box(Self), 'generateComponentsFromObjectConfig(2)');
        end;
        transformInfoObjectConfigInterface_ := transformInfoInterface_.getObjectConfigInterface();
        result_ := Self.generateComponentsFromObjectConfig(abeClientInformation, transformInfoObjectConfigInterface_, transformInfoInterface_, group);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('End Group: ' + group, TJava.Box(Self), 'generateComponentsFromObjectConfig(2)');
        end;
        Exit(result_);
end;
    

// throws Exception
function TTransformsGeneratorUtil.generateComponentsFromObjectConfig(abeClientInformation: IAbeClientInformationInterface; transformInfoObjectConfigInterface_: ITransformInfoObjectConfigInterface; transformInfoInterface_: ITransformInfoInterface; group: string): string;
var
  transformInfoObjectConfigComponentVector: TBasicArrayList;
  stringBuffer: TStringMaker;
  size: Integer;
  transformInfoObjectConfigComponent: TTransformInfoDomNode;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Started Group: ' + group, TJava.Box(Self), 'generateComponentsFromObjectConfig()');
        end;
        transformInfoObjectConfigComponentVector := transformInfoObjectConfigInterface_.getTransformsGroup(group);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Processing ');
            stringBuffer.appendint(transformInfoObjectConfigComponentVector.size());
            stringBuffer.append(' Components Group: ');
            stringBuffer.append(group);
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'generateComponentsFromObjectConfig()');
        end;
        if (transformInfoObjectConfigComponentVector.size()) < (1) then begin
            raise SysUtils.Exception.Create('No Pages Generated For Template.');
        end;
        size := transformInfoObjectConfigComponentVector.size();
        for index := 0 to size - 1 do begin
            transformInfoObjectConfigComponent := TTransformInfoDomNode(TJava.ToObject(transformInfoObjectConfigComponentVector.get(index)));
            TTransformGeneratorUtil.getInstance().generate(abeClientInformation, transformInfoObjectConfigComponent, transformInfoInterface_);
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Done Group: ' + group, TJava.Box(Self), 'generateComponentsFromObjectConfig()');
        end;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('<!-- Generated all template views successfully for View: ');
        stringBuffer.append(transformInfoInterface_.getName());
        stringBuffer.append('-->');
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TTransformsGeneratorUtil.instance := TTransformsGeneratorUtil.Create();
  {AB:END}

end.

