{

  AllBinary Open License Version 1
  Copyright (c) 2022 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
  
}
// Generated Code Do Not Modify
// package org.allbinary.data.tree.dom
unit AbXslHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, AbPath;

type
  {AB:TYPES}
  TAbXslHelper = class(TObject)
  public
    class var instance: TAbXslHelper;
    constructor Create;
        class function getInstance: TAbXslHelper; static;
        function translate(xslFile: TAbFile; xmlFile: TAbFile): string; overload; virtual;
        function translate(xslPath: TAbPath; xmlPath: TAbPath): string; overload; virtual;
        function translate(xsltFilePath: string; xmlFilePath: string): string; overload; virtual;
  end;

implementation
uses
  XslHelper;


{AB:CODE}

constructor TAbXslHelper.Create;
begin
  inherited Create;
end;
    

class function TAbXslHelper.getInstance: TAbXslHelper;
begin
        Exit(TAbXslHelper.instance);
end;
    

// throws Exception
function TAbXslHelper.translate(xslFile: TAbFile; xmlFile: TAbFile): string;
begin
        Exit(Self.translate(xslFile.getAbsolutePath(), xmlFile.getAbsolutePath()));
end;
    

// throws Exception
function TAbXslHelper.translate(xslPath: TAbPath; xmlPath: TAbPath): string;
begin
        Exit(Self.translate(xslPath.getPath(), xmlPath.getPath()));
end;
    

// throws Exception
function TAbXslHelper.translate(xsltFilePath: string; xmlFilePath: string): string;
var
  outputStream: TByteArrayOutputStream;
begin
        try
            outputStream := TByteArrayOutputStream.Create;
            Exit(TXslHelper.getInstance().translate(TStreamSource.Create(xsltFilePath), TStreamSource.Create(xmlFilePath), TStreamResult.Create(outputStream)).toString());
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAbXslHelper.instance := TAbXslHelper.Create();
  {AB:END}

end.

