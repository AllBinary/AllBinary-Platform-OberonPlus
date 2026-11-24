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
unit TransformInfoObjectConfigAndManipulatorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbPath, AbeClientInformationInterface, TransformInfoInterface, Document, TransformInfoObjectConfigInterface, TransformInfoObjectConfigAndManipulatorFactoryBase;

type
  {AB:TYPES}
  TTransformInfoObjectConfigAndManipulatorFactory = class(TTransformInfoObjectConfigAndManipulatorFactoryBase)
  public
    logUtil: TLogUtil;
    class var instance: TTransformInfoObjectConfigAndManipulatorFactory;
    procedure InitFields;
        class function getInstance: TTransformInfoObjectConfigAndManipulatorFactory; overload; static;
        constructor Create;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; objectConfigFileAbPath: TAbPath): ITransformInfoObjectConfigInterface; overload; virtual;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface): ITransformInfoObjectConfigInterface; overload; virtual;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; document_: TDocument): ITransformInfoObjectConfigInterface; overload; virtual;
  end;

implementation
uses
  TransformInfoObjectConfigData, TransformInfoObjectConfig, GenericStoreTransformInfoObjectConfig, DomDocumentHelper, CryptFileReader;


{AB:CODE}

procedure TTransformInfoObjectConfigAndManipulatorFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TTransformInfoObjectConfigAndManipulatorFactory.getInstance: TTransformInfoObjectConfigAndManipulatorFactory;
begin
        Exit(TTransformInfoObjectConfigAndManipulatorFactory.instance);
end;
    

constructor TTransformInfoObjectConfigAndManipulatorFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TTransformInfoObjectConfigAndManipulatorFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; objectConfigFileAbPath: TAbPath): ITransformInfoObjectConfigInterface;
var
  data: string;
begin
        try
            data := TCryptFileReader.Create(TTransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(objectConfigFileAbPath);
            Exit(Self.getInstance(abeClientInformation, transformInfoInterface_, TDomDocumentHelper.create_(data)));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Could Not Load Object Config', TJava.Box(TTransformInfoObjectConfigAndManipulatorFactory.getInstance()), Self.commonStrings.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TTransformInfoObjectConfigAndManipulatorFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface): ITransformInfoObjectConfigInterface;
var
  stringValidationUtil_: TObject;
  error: string;
begin
        try
            stringValidationUtil_ := nil;
            if ((transformInfoInterface_) <> (nil)) and (not ((transformInfoInterface_.getStoreName() = ''))) then begin
                Exit((TJava.ToObject(TGenericStoreTransformInfoObjectConfig.Create(abeClientInformation, transformInfoInterface_)) as ITransformInfoObjectConfigInterface));
            end else begin
                Exit((TJava.ToObject(TTransformInfoObjectConfig.Create(transformInfoInterface_)) as ITransformInfoObjectConfigInterface));
            end;
        except
            on e: SysUtils.Exception do begin
            error := 'Failed To Get Instance: ';
            if (transformInfoInterface_) <> (nil) then begin
                error := error + transformInfoInterface_.getName();
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(TTransformInfoObjectConfigAndManipulatorFactory.getInstance()), Self.commonStrings.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TTransformInfoObjectConfigAndManipulatorFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; document_: TDocument): ITransformInfoObjectConfigInterface;
var
  stringValidationUtil_: TObject;
  error: string;
begin
        try
            stringValidationUtil_ := nil;
            if ((transformInfoInterface_) <> (nil)) and (not ((transformInfoInterface_.getStoreName() = ''))) then begin
                Exit((TJava.ToObject(TGenericStoreTransformInfoObjectConfig.Create(abeClientInformation, transformInfoInterface_, document_)) as ITransformInfoObjectConfigInterface));
            end else begin
                Exit((TJava.ToObject(TTransformInfoObjectConfig.Create(transformInfoInterface_, document_)) as ITransformInfoObjectConfigInterface));
            end;
        except
            on e: SysUtils.Exception do begin
            error := 'Failed To Get Instance: ';
            if (transformInfoInterface_) <> (nil) then begin
                error := error + transformInfoInterface_.getName();
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(TTransformInfoObjectConfigAndManipulatorFactory.getInstance()), 'getInstance(document)', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TTransformInfoObjectConfigAndManipulatorFactory.instance := TTransformInfoObjectConfigAndManipulatorFactory.Create();
  {AB:END}

end.

