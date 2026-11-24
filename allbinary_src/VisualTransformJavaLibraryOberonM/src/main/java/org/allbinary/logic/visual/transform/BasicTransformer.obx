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
// package org.allbinary.logic.visual.transform
unit BasicTransformer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StreamUtil, AbFile, AbeClientInformationInterface, TransformInfoInterface, AbTransformer;

type
  {AB:TYPES}
  TBasicTransformer = class(TAbTransformer)
  public
    logUtil: TLogUtil;
    streamUtil: TStreamUtil;
    abeClientInformation: IAbeClientInformationInterface;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface);
        procedure setEncryptedTemplateFileAsInputStream(file_: TAbFile);
        procedure setEncryptedTemplateAsInputStream;
        procedure setTemplateAsInputStream;
  end;

implementation
uses
  BasicUriResolver, AbCrypt, KeySpecFactory, AbFileInputStream, AbPathData, PathUtil, StringMaker, AbKeys, TransformInfoTemplateData;


{AB:CODE}

procedure TBasicTransformer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.streamUtil := TStreamUtil.getInstance();
  
end;
    

constructor TBasicTransformer.Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.abeClientInformation := abeClientInformation;
        Self.setTemplateAsInputStream();
end;
    

// throws Exception
procedure TBasicTransformer.setEncryptedTemplateFileAsInputStream(file_: TAbFile);
var
  outputStream: TByteArrayOutputStream;
  inputStream_: TAbFileInputStream;
  abCrypt_: TAbCrypt;
  decrypted: TArray<ShortInt>;
  stringBuffer: TStringMaker;
begin
        outputStream := nil;
        inputStream_ := nil;
        try
        try
            outputStream := TByteArrayOutputStream.Create;
            inputStream_ := TAbFileInputStream.createFromAbFile(file_);
            outputStream := TByteArrayOutputStream(TJava.ToObject(Self.streamUtil.get(inputStream_, outputStream, TJava.NewArray<ShortInt>(16384))));
            abCrypt_ := TAbCrypt.Create(TKeySpecFactory.DESEDE, TAbKeys.getInstance().getKey(Self.abeClientInformation, file_.getAbsolutePath()));
            decrypted := abCrypt_.decrypt(outputStream.toByteArray());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                Self.logUtil.putF('Decrypted Template: '#10'' + TJava.ToString(TJava.NewString(decrypted)), TJava.Box(Self), 'setEncryptedTemplateFileAsInputStream(file)');
            end;
            Self.setInputStream(TInputStream(TJava.ToObject(TByteArrayInputStream.Create(decrypted))));
            Self.setURIResolver(TURIResolver(TJava.ToObject(TBasicUriResolver.Create(TTransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION))));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Failed to get Encrypted File: ');
                stringBuffer.append(file_.getPath());
                stringBuffer.append(' '#10'Name:');
                stringBuffer.append(file_.getName());
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(Self), 'setEncryptedTemplateFileAsInputStream()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
        finally
            Self.streamUtil.close(outputStream);
            Self.streamUtil.close(inputStream_);
        end;
end;
    

// throws Exception
procedure TBasicTransformer.setEncryptedTemplateAsInputStream;
var
  outputStream: TByteArrayOutputStream;
  inputStream_: TByteArrayInputStream;
  abCrypt_: TAbCrypt;
  decrypted: TArray<ShortInt>;
begin
        outputStream := nil;
        inputStream_ := nil;
        try
        try
            outputStream := TByteArrayOutputStream.Create;
            inputStream_ := TByteArrayInputStream.Create(Self.getTransformInfoInterface().getTemplate().getBytes());
            outputStream := TByteArrayOutputStream(TJava.ToObject(Self.streamUtil.get(inputStream_, outputStream, TJava.NewArray<ShortInt>(16384))));
            abCrypt_ := TAbCrypt.Create(TKeySpecFactory.DESEDE, TAbKeys.getInstance().getKey(Self.abeClientInformation, Self.getTransformInfoInterface().getName()));
            decrypted := abCrypt_.decrypt(outputStream.toByteArray());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                Self.logUtil.putF('Decrypted Template: '#10'' + decrypted.toString(), TJava.Box(Self), 'setEncryptedTemplateAsInputStream()');
            end;
            Self.setInputStream(TInputStream(TJava.ToObject(TByteArrayInputStream.Create(decrypted))));
            Self.setURIResolver(TURIResolver(TJava.ToObject(TBasicUriResolver.Create(TTransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION))));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                Self.logUtil.put('Failed to set with template: ' + TJava.ToString(Self.getTransformInfoInterface().getTemplateFilePath()), TJava.Box(Self), 'setEncryptedTemplateFileAsInputStream()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
        finally
            Self.streamUtil.close(outputStream);
            Self.streamUtil.close(inputStream_);
        end;
end;
    

// throws Exception
procedure TBasicTransformer.setTemplateAsInputStream;
var
  inputStream_: TAbFileInputStream;
  outputStream: TByteArrayOutputStream;
  transformInfoTemplateData_: TTransformInfoTemplateData;
  pathUtil_: TPathUtil;
  extension: string;
  filePath: string;
  stringBuffer: TStringMaker;
  file_: TAbFile;
  encFile: TAbFile;
begin
        inputStream_ := nil;
        outputStream := nil;
        try
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                Self.logUtil.putF(Self.getTransformInfoInterface().log(), TJava.Box(Self), 'setTemplateAsInputStream()');
            end;
            transformInfoTemplateData_ := TTransformInfoTemplateData.getInstance();
            pathUtil_ := TPathUtil.getInstance();
            if not TJava.IsNull(Self.getTransformInfoInterface().getTemplateFilePath()) then begin
                extension := pathUtil_.getExtensionWithAbPath(Self.getTransformInfoInterface().getTemplateFilePath());
                filePath := pathUtil_.getWithoutExtensionWithAbPath(Self.getTransformInfoInterface().getTemplateFilePath());
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                    Self.logUtil.putF(Self.getTransformInfoInterface().log(), TJava.Box(Self), 'setTemplateAsInputStream()');
                end;
                if (CompareStr(extension, transformInfoTemplateData_.UNCRYPTED_EXTENSION)) = (0) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append(filePath);
                    stringBuffer.append(TAbPathData.getInstance().EXTENSION_SEP);
                    stringBuffer.append(transformInfoTemplateData_.ENCRYPTED_EXTENSION);
                    encFile := TAbFile.createAbFile(stringBuffer.toString());
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                        Self.logUtil.putF(Self.getTransformInfoInterface().log(), TJava.Box(Self), 'setTemplateAsInputStream()');
                    end;
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                        stringBuffer := TStringMaker.Create();
                        stringBuffer.append('Encrypted Template File isFile=');
                        stringBuffer.appendboolean(encFile.isFile());
                        stringBuffer.append(''#10'EncTemplateFilePath: ');
                        stringBuffer.append(encFile.getPath());
                        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'setTemplateAsInputStream()');
                    end;
                    if encFile.isFile() then begin
                        Self.setEncryptedTemplateFileAsInputStream(encFile);
                        Exit;
                    end else begin
                        file_ := TAbFile.createAbFileFromAbPath(Self.getTransformInfoInterface().getTemplateFilePath());
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                            Self.logUtil.putF(Self.getTransformInfoInterface().log(), TJava.Box(Self), 'setTemplateAsInputStream()');
                        end;
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                            Self.logUtil.putF('Template File isFile=' + TJava.ToString(file_.isFile()), TJava.Box(Self), 'setTemplateAsInputStream()');
                        end;
                        if file_.isFile() then begin
                            inputStream_ := TAbFileInputStream.createFromAbFile(file_);
                            outputStream := TByteArrayOutputStream.Create;
                            outputStream := TByteArrayOutputStream(TJava.ToObject(Self.streamUtil.get(inputStream_, outputStream, TJava.NewArray<ShortInt>(16384))));
                            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                                Self.logUtil.putF('Template: ' + outputStream.toString(), TJava.Box(Self), 'getTemplateAsInputStream()');
                            end;
                            Self.setInputStream(TInputStream(TJava.ToObject(TByteArrayInputStream.Create(outputStream.toByteArray()))));
                            Self.setURIResolver(TURIResolver(TJava.ToObject(TBasicUriResolver.Create(transformInfoTemplateData_.UNCRYPTED_EXTENSION))));
                            Exit;
                        end;
                    end;
                end else if (CompareStr(extension, transformInfoTemplateData_.ENCRYPTED_EXTENSION)) = (0) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append(filePath);
                    stringBuffer.append(TAbPathData.getInstance().EXTENSION_SEP);
                    stringBuffer.append(transformInfoTemplateData_.ENCRYPTED_EXTENSION);
                    file_ := TAbFile.createAbFile(stringBuffer.toString());
                    if file_.isFile() then begin
                        Self.setEncryptedTemplateFileAsInputStream(file_);
                    end;
                end else begin
                    raise SysUtils.Exception.Create('View Template File Type Is Not Recognized: ' + TJava.ToString(Self.getTransformInfoInterface().getTemplateFilePath()));
                end;
            end else begin
                Self.setEncryptedTemplateAsInputStream();
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                Self.logUtil.put('Failed to get Template Data', TJava.Box(Self), 'setTemplateAsInputStream()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
        finally
            Self.streamUtil.close(outputStream);
            Self.streamUtil.close(inputStream_);
        end;
        raise SysUtils.Exception.Create('Error setTemplateAsInputStream()');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

