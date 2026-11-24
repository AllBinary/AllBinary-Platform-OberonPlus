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
unit StoreFileGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbFile, AbPath, TransformInfoInterface, CommonStrings, TransformInfoObjectConfigGenerator;

type
  {AB:TYPES}
  TStoreFileGenerator = class(TTransformInfoObjectConfigGenerator)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    output: string;
    fileAbPath: TAbPath;
    file_: TAbFile;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function process(input: string): string; virtual;
  end;

implementation
uses
  URLGLOBALS, StdUtil, WeblisketSession, InputOutputTypeData, FileUtil, AbPathData, StringMaker, StringUtil, Replace, TransformInfoHttpInterface, TransformInfoHttpStoreInterface, TransformInfosData, CommonSeps;


{AB:CODE}

procedure TStoreFileGenerator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;
    

constructor TStoreFileGenerator.Create(transformInfoInterface_: ITransformInfoInterface);
var
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  weblisketSession_: TWeblisketSession;
  stringBuffer: TStringMaker;
  abPath_: TAbPath;
  fileName: string;
  stringValidationUtil_: TObject;
  transformInfoHttpStoreInterface_: ITransformInfoHttpStoreInterface;
  outputMappingHashMap: TJavaHashMap<TObject, TObject>;
  replace_: TReplace;
  tempOutput: string;
begin
    inherited Create;
    InitFields;
        httpTransformInfoInterface := (TJava.ToObject(transformInfoInterface_) as ITransformInfoHttpInterface);
        weblisketSession_ := TWeblisketSession.Create(httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext());
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TURLGLOBALS.getWebappPath());
        stringBuffer.append(weblisketSession_.getStoreName());
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        abPath_ := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
        fileName := TJava.UnboxString(TJava.ToObject(httpTransformInfoInterface.getPropertiesHashMap().get(TInputOutputTypeData.getInstance().FILE_)));
        stringValidationUtil_ := nil;
        if (fileName = '') then begin
            transformInfoHttpStoreInterface_ := (TJava.ToObject(transformInfoInterface_) as ITransformInfoHttpStoreInterface);
            fileName := transformInfoInterface_.getName().substring((transformInfoHttpStoreInterface_.getStoreName().length()) + (1));
            outputMappingHashMap := TStdUtil.getInstance().createHashMap();
            outputMappingHashMap.put(TJava.Box(TTransformInfosData.getInstance().PREVIEW), TJava.Box('Preview'));
            outputMappingHashMap.put(TJava.Box(TTransformInfosData.getInstance().SMALL_PREVIEW), TJava.Box('SmallPreview'));
            outputMappingHashMap.put(TJava.Box(TCommonSeps.getInstance().SPACE), TJava.Box(TStringUtil.getInstance().EMPTY_STRING));
            replace_ := TReplace.Create(outputMappingHashMap);
            fileName := replace_.all(fileName);
        end;
        if (fileName = '') then begin
            raise SysUtils.Exception.Create('TransformInfoObjectConfigGenerator FileName Not Specified');
        end;
        tempOutput := TJava.UnboxString(TJava.ToObject(httpTransformInfoInterface.getPropertiesHashMap().get(TInputOutputTypeData.getInstance().NAME)));
        if (tempOutput = '') then begin
            tempOutput := TInputOutputTypeData.getInstance().DEFAULT;
        end;
        Self.output := tempOutput;
        if (Self.output = '') then begin
            raise SysUtils.Exception.Create('TransformInfoObjectConfigGenerator Output=extension Not Specified');
        end;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(fileName);
        stringBuffer.append(TAbPathData.getInstance().EXTENSION_SEP);
        stringBuffer.append(Self.output);
        abPath_ := TAbPath.Create(abPath_.toString(), stringBuffer.toString());
        Self.fileAbPath := abPath_;
        Self.file_ := TAbFile.createAbFileFromAbPath(Self.fileAbPath);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('File: ' + Self.fileAbPath.toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

// throws Exception
function TStoreFileGenerator.process(input: string): string;
var
  inputStream_: TInputStream;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Processing', TJava.Box(Self), Self.commonStrings.PROCESS);
        end;
        if not (Self.file_.exists()) then begin
            Self.file_.createNewFile();
        end;
        if Self.file_.exists() then begin
            inputStream_ := TByteArrayInputStream.Create(TJava.GetBytes(input));
            TFileUtil.getInstance().write(inputStream_, Self.file_);
        end else begin
            raise SysUtils.Exception.Create('Could Not Create: ' + Self.fileAbPath.toString());
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Processed', TJava.Box(Self), Self.commonStrings.PROCESS);
        end;
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

