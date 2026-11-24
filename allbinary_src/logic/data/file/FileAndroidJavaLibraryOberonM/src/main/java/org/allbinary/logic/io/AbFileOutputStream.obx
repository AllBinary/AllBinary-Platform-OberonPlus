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
unit AbFileOutputStream;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile;

type
  {AB:TYPES}
  TAbFileOutputStream = class(TOutputStream)
  public
    fileOutputStream: TFileOutputStream;
    procedure InitFields;
        class function createFromAbFile(file_: TAbFile): TAbFileOutputStream; static;
        class function createFromAbFileAppend(file_: TAbFile; append: Boolean): TAbFileOutputStream; static;
        class function createFromFilePath(name: string): TAbFileOutputStream; static;
        class function createFromFilePathAppend(name: string; append: Boolean): TAbFileOutputStream; static;
        constructor Create(fileOutputStream_: TFileOutputStream);
        procedure close; override;
        function getChannel: TFileChannel; virtual;
        procedure write(buffer: TArray<ShortInt>); overload; override;
        procedure write(buffer: TArray<ShortInt>; offset: Integer; count: Integer); overload; override;
        procedure write(b: Integer); overload; override;
  end;

implementation
uses
  AbFileNativeUtil;


{AB:CODE}

procedure TAbFileOutputStream.InitFields;
begin
  
end;
    

// throws FileNotFoundException
class function TAbFileOutputStream.createFromAbFile(file_: TAbFile): TAbFileOutputStream;
begin
        Exit(TAbFileOutputStream.Create(TFileOutputStream.Create(TAbFileNativeUtil.get(file_))));
end;
    

// throws FileNotFoundException
class function TAbFileOutputStream.createFromAbFileAppend(file_: TAbFile; append: Boolean): TAbFileOutputStream;
begin
        Exit(TAbFileOutputStream.Create(TFileOutputStream.Create(file_.getPath())));
end;
    

// throws FileNotFoundException
class function TAbFileOutputStream.createFromFilePath(name: string): TAbFileOutputStream;
begin
        Exit(TAbFileOutputStream.Create(TFileOutputStream.Create(name)));
end;
    

// throws FileNotFoundException
class function TAbFileOutputStream.createFromFilePathAppend(name: string; append: Boolean): TAbFileOutputStream;
begin
        Exit(TAbFileOutputStream.Create(TFileOutputStream.Create(name)));
end;
    

constructor TAbFileOutputStream.Create(fileOutputStream_: TFileOutputStream);
begin
    inherited Create;
    InitFields;
        Self.fileOutputStream := fileOutputStream_;
end;
    

// throws IOException
procedure TAbFileOutputStream.close;
begin
        Self.fileOutputStream.close();
end;
    

function TAbFileOutputStream.getChannel: TFileChannel;
begin
        Exit(Self.fileOutputStream.getChannel());
end;
    

// throws IOException
procedure TAbFileOutputStream.write(buffer: TArray<ShortInt>);
begin
        Self.fileOutputStream.write(buffer);
end;
    

// throws IOException
procedure TAbFileOutputStream.write(buffer: TArray<ShortInt>; offset: Integer; count: Integer);
begin
        Self.fileOutputStream.write(buffer, offset, count);
end;
    

// throws IOException
procedure TAbFileOutputStream.write(b: Integer);
begin
        Self.fileOutputStream.write(b);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

