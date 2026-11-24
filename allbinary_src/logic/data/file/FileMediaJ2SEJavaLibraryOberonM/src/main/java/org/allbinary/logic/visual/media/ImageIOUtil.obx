// Generated Code Do Not Modify
// package org.allbinary.logic.visual.media
unit ImageIOUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile;

type
  {AB:TYPES}
  TImageIOUtil = class(TObject)
  public
    constructor Create;
        class function read(file_: TAbFile): TBufferedImage; static;
        class function write(renderedImage_: TRenderedImage; name: string; file_: TAbFile): Boolean; static;
  end;

implementation
uses
  AbFileNativeUtil;


{AB:CODE}

constructor TImageIOUtil.Create;
begin
  inherited Create;
end;
    

// throws Exception
class function TImageIOUtil.read(file_: TAbFile): TBufferedImage;
begin
        Exit(TImageIO.read(TAbFileNativeUtil.get(file_)));
end;
    

// throws Exception
class function TImageIOUtil.write(renderedImage_: TRenderedImage; name: string; file_: TAbFile): Boolean;
begin
        Exit(TImageIO.write(renderedImage_, name, TAbFileNativeUtil.get(file_)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

