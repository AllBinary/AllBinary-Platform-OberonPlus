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
// package org.allbinary.logic.io
unit AbFileInputStream;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAbFileInputStream = class(TInputStream)
  public
    fileInputStream: TFileInputStream;
    procedure InitFields;
        constructor Create(fileInputStream_: TFileInputStream);
        procedure mark(readlimit: Integer); override;
        function markSupported: Boolean; override;
        procedure reset; override;
        function available: Integer; override;
        procedure close; override;
        function getChannel: TFileChannel; virtual;
        function read: Integer; overload; override;
        function read(b: TArray<ShortInt>): Integer; overload; override;
        function read(buffer: TArray<ShortInt>; offset: Integer; count: Integer): Integer; overload; override;
        function skip(n: Int64): Int64; override;
  end;

implementation

{AB:CODE}

procedure TAbFileInputStream.InitFields;
begin
  
end;
    

constructor TAbFileInputStream.Create(fileInputStream_: TFileInputStream);
begin
    inherited Create;
    InitFields;
        Self.fileInputStream := fileInputStream_;
end;
    

procedure TAbFileInputStream.mark(readlimit: Integer);
begin
        Self.fileInputStream.mark(readlimit);
end;
    

function TAbFileInputStream.markSupported: Boolean;
begin
        Exit(Self.fileInputStream.markSupported());
end;
    

// throws IOException
procedure TAbFileInputStream.reset;
begin
    TJava.MonitorEnter(Self);
    try
        Self.fileInputStream.reset();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws IOException
function TAbFileInputStream.available: Integer;
begin
        Exit(Self.fileInputStream.available());
end;
    

// throws IOException
procedure TAbFileInputStream.close;
begin
        Self.fileInputStream.close();
end;
    

function TAbFileInputStream.getChannel: TFileChannel;
begin
        Exit(Self.fileInputStream.getChannel());
end;
    

// throws IOException
function TAbFileInputStream.read: Integer;
begin
        Exit(Self.fileInputStream.read());
end;
    

// throws IOException
function TAbFileInputStream.read(b: TArray<ShortInt>): Integer;
begin
        Exit(Self.fileInputStream.read(b));
end;
    

// throws IOException
function TAbFileInputStream.read(buffer: TArray<ShortInt>; offset: Integer; count: Integer): Integer;
begin
        Exit(Self.fileInputStream.read(buffer, offset, count));
end;
    

// throws IOException
function TAbFileInputStream.skip(n: Int64): Int64;
begin
        Exit(Self.fileInputStream.skip(n));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

