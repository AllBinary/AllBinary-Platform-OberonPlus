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
// package org.allbinary.logic.communication.http.file.upload
unit AbFileItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbFile, CommonStrings, FileItem, FileItemHeaders;

type
  {AB:TYPES}
  TAbFileItem = class(TInterfacedObject, IFileItem)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    name: string;
    fieldName: string;
    byteArray: TArray<ShortInt>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string; fieldName: string; byteArray: TArray<ShortInt>);
        function getInputStream: TInputStream; virtual;
        function getContentType: string; virtual;
        function getName: string; virtual;
        function isInMemory: Boolean; virtual;
        function getSize: Int64; virtual;
        function get: TArray<ShortInt>; virtual;
        function getString(encoding: string): string; overload; virtual;
        function getString: string; overload; virtual;
        procedure write(file_: TFile); overload; virtual;
        procedure write(file_: TAbFile); overload; virtual;
        procedure delete_; virtual;
        function getFieldName: string; virtual;
        procedure setFieldName(name: string); virtual;
        function isFormField: Boolean; virtual;
        procedure setFormField(state: Boolean); virtual;
        function getOutputStream: TOutputStream; virtual;
        function getHeaders: TFileItemHeaders; virtual;
        procedure setHeaders(fih: TFileItemHeaders); virtual;
  end;

implementation
uses
  ForcedLogUtil, StringUtil, FileItemUtil;


{AB:CODE}

procedure TAbFileItem.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;

function TAbFileItem.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAbFileItem.Create(name: string; fieldName: string; byteArray: TArray<ShortInt>);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.fieldName := fieldName;
        Self.byteArray := byteArray;
end;
    

// throws IOException
function TAbFileItem.getInputStream: TInputStream;
begin
        raise TIOException.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

function TAbFileItem.getContentType: string;
begin
        Exit(nil);
end;
    

function TAbFileItem.getName: string;
begin
        Exit(Self.name);
end;
    

function TAbFileItem.isInMemory: Boolean;
begin
        Exit(True);
end;
    

function TAbFileItem.getSize: Int64;
begin
        Exit(Int64(System.Length(Self.byteArray)));
end;
    

function TAbFileItem.get: TArray<ShortInt>;
begin
        Exit(Self.byteArray);
end;
    

// throws UnsupportedEncodingException
function TAbFileItem.getString(encoding: string): string;
begin
        Exit(TJava.NewString(Self.byteArray, encoding));
end;
    

function TAbFileItem.getString: string;
begin
        try
            Exit(TFileItemUtil.getInstance().getString(Self.byteArray));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getString', TJava.Box(e));
            end;
            Exit(TStringUtil.getInstance().EMPTY_STRING);
            end;
        end;
end;
    

// throws Exception
procedure TAbFileItem.write(file_: TFile);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
procedure TAbFileItem.write(file_: TAbFile);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

procedure TAbFileItem.delete_;
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, TJava.Box('delete()'));
end;
    

function TAbFileItem.getFieldName: string;
begin
        Exit(Self.fieldName);
end;
    

procedure TAbFileItem.setFieldName(name: string);
begin
        Self.fieldName := name;
end;
    

function TAbFileItem.isFormField: Boolean;
begin
        if (Self.fieldName = '') then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

procedure TAbFileItem.setFormField(state: Boolean);
begin
end;
    

// throws IOException
function TAbFileItem.getOutputStream: TOutputStream;
begin
        raise TIOException.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

function TAbFileItem.getHeaders: TFileItemHeaders;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

procedure TAbFileItem.setHeaders(fih: TFileItemHeaders);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

