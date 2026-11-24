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
// package org.allbinary.logic.system.security
unit AbCryptUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StreamUtil;

type
  {AB:TYPES}
  TAbCryptUtil = class(TObject)
  public
    streamUtil: TStreamUtil;
    class var instance: TAbCryptUtil;
    procedure InitFields;
        class function getInstance: TAbCryptUtil; static;
        constructor Create;
        function decrypt(inputStream_: TInputStream; key: string): TArray<ShortInt>; virtual;
  end;

implementation
uses
  AbCrypt, KeySpecFactory;


{AB:CODE}

procedure TAbCryptUtil.InitFields;
begin
  Self.streamUtil := TStreamUtil.getInstance();
end;
    

class function TAbCryptUtil.getInstance: TAbCryptUtil;
begin
        Exit(TAbCryptUtil.instance);
end;
    

constructor TAbCryptUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TAbCryptUtil.decrypt(inputStream_: TInputStream; key: string): TArray<ShortInt>;
var
  outputStream: TByteArrayOutputStream;
  abCrypt_: TAbCrypt;
begin
        outputStream := nil;
        try
        begin
            outputStream := TByteArrayOutputStream(TJava.ToObject(Self.streamUtil.get(inputStream_, TByteArrayOutputStream.Create, TJava.NewArray<ShortInt>(16384))));
            abCrypt_ := TAbCrypt.Create(TKeySpecFactory.getInstance().DESEDE);
            abCrypt_.init(key);
            Exit(abCrypt_.decrypt(outputStream.toByteArray()));
        end;
        finally
            Self.streamUtil.close(outputStream);
            Self.streamUtil.close(inputStream_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAbCryptUtil.instance := TAbCryptUtil.Create();
  {AB:END}

end.

