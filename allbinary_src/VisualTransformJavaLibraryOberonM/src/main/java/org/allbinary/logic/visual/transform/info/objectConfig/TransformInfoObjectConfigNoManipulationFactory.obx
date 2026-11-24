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
// package org.allbinary.logic.visual.transform.info.objectConfig
unit TransformInfoObjectConfigNoManipulationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbPath, TransformInfoInterface, TransformInfoObjectConfigInterface;

type
  {AB:TYPES}
  TTransformInfoObjectConfigNoManipulationFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TTransformInfoObjectConfigNoManipulationFactory;
    procedure InitFields;
        class function getInstance: TTransformInfoObjectConfigNoManipulationFactory; overload; static;
        constructor Create;
        function getInstance(transformInfoInterface_: ITransformInfoInterface; objectConfigFileAbPath: TAbPath): ITransformInfoObjectConfigInterface; overload; virtual;
  end;

implementation
uses
  TransformInfoObjectConfigData, TransformInfoObjectConfig, DomDocumentHelper, CryptFileReader, CommonStrings;


{AB:CODE}

procedure TTransformInfoObjectConfigNoManipulationFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TTransformInfoObjectConfigNoManipulationFactory.getInstance: TTransformInfoObjectConfigNoManipulationFactory;
begin
        Exit(TTransformInfoObjectConfigNoManipulationFactory.instance);
end;
    

constructor TTransformInfoObjectConfigNoManipulationFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TTransformInfoObjectConfigNoManipulationFactory.getInstance(transformInfoInterface_: ITransformInfoInterface; objectConfigFileAbPath: TAbPath): ITransformInfoObjectConfigInterface;
var
  transformInfoObjectConfigData_: TTransformInfoObjectConfigData;
  data: string;
  commonStrings_: TCommonStrings;
begin
        try
            transformInfoObjectConfigData_ := TTransformInfoObjectConfigData.getInstance();
            data := TCryptFileReader.Create(transformInfoObjectConfigData_.UNCRYPTED_EXTENSION, transformInfoObjectConfigData_.getInstance().ENCRYPTED_EXTENSION).get(objectConfigFileAbPath);
            Exit(TTransformInfoObjectConfig.Create(transformInfoInterface_, TDomDocumentHelper.create_(data)));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Could Not Load Object Config', TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TTransformInfoObjectConfigNoManipulationFactory.instance := TTransformInfoObjectConfigNoManipulationFactory.Create();
  {AB:END}

end.

