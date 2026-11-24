// Generated Code Do Not Modify
// package org.allbinary.logic.visual.media
unit MediaIOUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMediaIOUtil = class(TObject)
  public
    class var instance: TMediaIOUtil;
    constructor Create;
        class function getInstance: TMediaIOUtil; static;
        function getReaderFormatNames: TArray<string>; virtual;
        function getWriterFormatNames: TArray<string>; virtual;
  end;

implementation

{AB:CODE}

constructor TMediaIOUtil.Create;
begin
  inherited Create;
end;
    

class function TMediaIOUtil.getInstance: TMediaIOUtil;
begin
        Exit(TMediaIOUtil.instance);
end;
    

function TMediaIOUtil.getReaderFormatNames: TArray<string>;
begin
        Exit(TImageIO.getReaderFormatNames());
end;
    

function TMediaIOUtil.getWriterFormatNames: TArray<string>;
begin
        Exit(TImageIO.getWriterFormatNames());
end;

initialization
  {AB:INITIALIZATION}
  TMediaIOUtil.instance := TMediaIOUtil.Create();
  {AB:END}

end.

