{
 
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
}
// Generated Code Do Not Modify
// package org.allbinary.media.image
unit ImagePersistanceUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbFile, CommonStrings;

type
  {AB:TYPES}
  TImagePersistanceUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    class var instance: TImagePersistanceUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TImagePersistanceUtil; static;
        procedure saveWithBatik(file_: TAbFile; bufferedImage_: TBufferedImage); virtual;
        procedure saveWithImageIO(filePath: string; bufferedImage_: TBufferedImage); overload; virtual;
        procedure saveWithImageIO(file_: TFile; bufferedImage_: TBufferedImage); overload; virtual;
  end;

implementation
uses
  AbFileOutputStream, StreamUtil, PNGImageWriter;


{AB:CODE}

procedure TImagePersistanceUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

constructor TImagePersistanceUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TImagePersistanceUtil.getInstance: TImagePersistanceUtil;
begin
        Exit(TImagePersistanceUtil.instance);
end;
    

// throws Exception
procedure TImagePersistanceUtil.saveWithBatik(file_: TAbFile; bufferedImage_: TBufferedImage);
var
  batikPNGImageWriter: TPNGImageWriter;
  fileOutputStream: TAbFileOutputStream;
begin
        batikPNGImageWriter := TPNGImageWriter.Create();
        fileOutputStream := TAbFileOutputStream.createFromAbFile(file_);
        try
        begin
            batikPNGImageWriter.writeImage(bufferedImage_, fileOutputStream);
        end;
        finally
            fileOutputStream.flush();
            TStreamUtil.getInstance().close(fileOutputStream);
        end;
        Self.logUtil.putF('Wrote Image: ' + TJava.ToString(file_.getAbsolutePath()), TJava.Box(Self), Self.commonStrings.SAVE);
end;
    

procedure TImagePersistanceUtil.saveWithImageIO(filePath: string; bufferedImage_: TBufferedImage);
begin
        Self.saveWithImageIO(TFile.Create(filePath), bufferedImage_);
end;
    

procedure TImagePersistanceUtil.saveWithImageIO(file_: TFile; bufferedImage_: TBufferedImage);
var
  writer: TImageWriter;
  ios: TImageOutputStream;
  iter: IIterator;
  iwp: TImageWriteParam;
begin
        writer := nil;
        ios := nil;
        try
        try
            iter := TImageIO.getImageWritersByFormatName('jpeg');
            if not (iter.hasNext()) then begin
                Self.logUtil.putF('Unable to save image to jpeg file type.', TJava.Box(Self), Self.commonStrings.SAVE);
                Exit;
            end;
            writer := TImageWriter(TJava.ToObject(iter.next()));
            ios := TImageIO.createImageOutputStream(file_);
            writer.setOutput(ios);
            iwp := writer.getDefaultWriteParam();
            iwp.setCompressionMode(TImageWriteParam.MODE_EXPLICIT);
            iwp.setCompressionQuality(0.95);
            writer.write(nil, TIIOImage.Create(bufferedImage_, nil, nil), iwp);
            Self.logUtil.putF('Wrote Image: ' + TJava.ToString(file_.getAbsolutePath()), TJava.Box(Self), Self.commonStrings.SAVE);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.SAVE, TJava.Box(e));
            end;
        end;
        finally
            try
                if (ios) <> (nil) then begin
                    ios.flush();
                    try
                        if (ios) <> (nil) then begin
                            Self.logUtil.putF(ios.toString(), TJava.Box(ios), Self.commonStrings.CLOSE);
                            ios.close();
                        end;
                    except
                        on e: SysUtils.Exception do begin
                        Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(ios), Self.commonStrings.CLOSE, TJava.Box(e));
                        end;
                    end;
                end;
                if (writer) <> (nil) then begin
                    writer.dispose_();
                end;
            except
                on e2: TIOException do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.SAVE, TJava.Box(e2));
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TImagePersistanceUtil.instance := TImagePersistanceUtil.Create();
  {AB:END}

end.

