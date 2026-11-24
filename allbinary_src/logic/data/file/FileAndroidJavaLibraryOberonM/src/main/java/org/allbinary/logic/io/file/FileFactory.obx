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
// package org.allbinary.logic.io.file
unit FileFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Context, AbFile;

type
  {AB:TYPES}
  TFileFactory = class(TObject)
  public
    context: TContext;
    class var SINGLETON: TFileFactory;
    procedure InitFields;
        constructor Create(context_: TContext);
        class function getInstance: TFileFactory; overload; static;
        function isFile(path: string): Boolean; virtual;
        function getContext: TContext; virtual;
        function getFile(filePath: string): TAbFile; virtual;
        function getInstance(file_: TAbFile; childFilePath: string): TAbFile; overload; virtual;
  end;

implementation
uses
  ResourceUtil;


{AB:CODE}

procedure TFileFactory.InitFields;
begin
  
end;
    

constructor TFileFactory.Create(context_: TContext);
begin
    inherited Create;
    InitFields;
        Self.context := context_;
end;
    

class function TFileFactory.getInstance: TFileFactory;
begin
        Exit(TFileFactory.SINGLETON);
end;
    

// throws Exception
function TFileFactory.isFile(path: string): Boolean;
begin
        try
            Self.context.openFileInput(path);
            Exit(True);
        except
            on e: TFileNotFoundException do begin
            Exit(False);
            end;
        end;
end;
    

function TFileFactory.getContext: TContext;
begin
        Exit(Self.context);
end;
    

// throws Exception
function TFileFactory.getFile(filePath: string): TAbFile;
begin
        Exit(TAbFile.createAbFileFromRawPath(filePath));
end;
    

// throws Exception
function TFileFactory.getInstance(file_: TAbFile; childFilePath: string): TAbFile;
begin
        Exit(TAbFile.createAbFileWithChild(file_, childFilePath));
end;

initialization
  {AB:INITIALIZATION}
  TFileFactory.SINGLETON := TFileFactory.Create(TResourceUtil.getInstance().getContext());
  {AB:END}

end.

