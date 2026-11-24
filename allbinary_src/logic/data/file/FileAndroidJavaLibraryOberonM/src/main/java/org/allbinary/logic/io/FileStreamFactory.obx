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
unit FileStreamFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Context, AbFileInputStream, AbFileOutputStream;

type
  {AB:TYPES}
  TFileStreamFactory = class(TObject)
  public
    context: TObject;
    class var SINGLETON: TObject;
    procedure InitFields;
        class function getInstance: TFileStreamFactory; static;
        constructor Create(context_: TContext);
        function getFileInputStreamInstance(path: string; fileName: string): TAbFileInputStream; virtual;
        function getFileOutputStreamInstance(path: string; fileName: string): TAbFileOutputStream; virtual;
        procedure delete_(path: string; fileName: string); virtual;
        function getContext: TContext;
  end;

implementation
uses
  ResourceUtil, NullUtil;


{AB:CODE}

procedure TFileStreamFactory.InitFields;
begin
  
end;
    

class function TFileStreamFactory.getInstance: TFileStreamFactory;
begin
        if (TFileStreamFactory.SINGLETON) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TFileStreamFactory.SINGLETON := TFileStreamFactory.Create(TResourceUtil.getInstance().getContext());
        end;
        Exit(TFileStreamFactory(TJava.ToObject(TFileStreamFactory.SINGLETON)));
end;
    

constructor TFileStreamFactory.Create(context_: TContext);
begin
    inherited Create;
    InitFields;
        Self.context := TJava.Box(context_);
end;
    

// throws Exception
function TFileStreamFactory.getFileInputStreamInstance(path: string; fileName: string): TAbFileInputStream;
begin
        Exit(TAbFileInputStream.Create(Self.getContext().openFileInput(fileName)));
end;
    

// throws Exception
function TFileStreamFactory.getFileOutputStreamInstance(path: string; fileName: string): TAbFileOutputStream;
var
  context_: TContext;
begin
        context_ := Self.getContext();
        context_.deleteFile(fileName);
        Exit(TAbFileOutputStream.Create(context_.openFileOutput(fileName, 0)));
end;
    

// throws Exception
procedure TFileStreamFactory.delete_(path: string; fileName: string);
begin
        Self.getContext().deleteFile(fileName);
end;
    

function TFileStreamFactory.getContext: TContext;
begin
        Exit(TContext(TJava.ToObject(Self.context)));
end;

initialization
  {AB:INITIALIZATION}
  TFileStreamFactory.SINGLETON := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

