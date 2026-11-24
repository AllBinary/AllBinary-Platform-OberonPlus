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
// package org.allbinary.logic.system.security.crypt.jcehelper
unit AbBasicCrypt;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CryptInterface;

type
  {AB:TYPES}
  TAbBasicCrypt = class(TInterfacedObject, ICryptInterface)
  public
    cipher: TCipher;
    secretKey: TSecretKey;
    algorithm: string;
    key: TArray<ShortInt>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(algorithm: string; key: string);
        procedure init;
        function encrypt(array_: TArray<ShortInt>): TArray<ShortInt>; virtual;
        function decrypt(array_: TArray<ShortInt>): TArray<ShortInt>; virtual;
  end;

implementation
uses
  SunJCE, KeySpecFactory, PreLogUtil, CommonStrings;


{AB:CODE}

procedure TAbBasicCrypt.InitFields;
begin
  
  
  
  
end;

function TAbBasicCrypt.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAbBasicCrypt.Create(algorithm: string; key: string);
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        try
            Self.algorithm := algorithm;
            Self.key := key.getBytes();
            Self.init();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.putOE(commonStrings_.EXCEPTION, TJava.Box(Self), 'AbCrypt(alg,key)', TJava.Box(e));
            end;
        end;
end;
    

procedure TAbBasicCrypt.init;
var
  sunJce_: TProvider;
  keySpec_: TKeySpec;
  keyFactory: TSecretKeyFactory;
  commonStrings_: TCommonStrings;
begin
        try
            sunJce_ := TSunJCE.Create();
            TSecurity.addProvider(sunJce_);
            keySpec_ := TKeySpecFactory.getInstance().getInstance(Self.algorithm, Self.key);
            keyFactory := TSecretKeyFactory.getInstance(Self.algorithm);
            Self.secretKey := keyFactory.generateSecret(keySpec_);
            Self.cipher := TCipher.getInstance(Self.algorithm);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.putOE('init Failed', TJava.Box(Self), commonStrings_.INIT, TJava.Box(e));
            end;
        end;
end;
    

function TAbBasicCrypt.encrypt(array_: TArray<ShortInt>): TArray<ShortInt>;
var
  ivArray: TArray<ShortInt>;
  encrypted: TArray<ShortInt>;
  result_: TArray<ShortInt>;
  index: Integer;
begin
        try
            Self.cipher.init(TCipher.ENCRYPT_MODE, Self.secretKey);
            ivArray := Self.secretKey.getEncoded();
            encrypted := Self.cipher.doFinal(array_);
            result_ := TJava.NewArray<ShortInt>((System.Length(ivArray)) + (System.Length(encrypted)));
            TPreLogUtil.put('ivArray Length: ' + IntToStr(System.Length(ivArray)), TJava.Box(Self), 'encrypt');
            for index := 0 to System.Length(ivArray) - 1 do begin
                result_[index] := ivArray[index];
            end;
            for index := 0 to System.Length(encrypted) - 1 do begin
                result_[(index) + (System.Length(ivArray))] := encrypted[index];
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE('Encrypt Failed', TJava.Box(Self), 'encrypt', TJava.Box(e));
            Exit(nil);
            end;
        end;
end;
    

function TAbBasicCrypt.decrypt(array_: TArray<ShortInt>): TArray<ShortInt>;
var
  ivArray: TArray<ShortInt>;
  index: Integer;
  result_: TArray<ShortInt>;
  decrypted: TArray<ShortInt>;
begin
        try
            Self.cipher.init(TCipher.DECRYPT_MODE, Self.secretKey);
            ivArray := TJava.NewArray<ShortInt>(8);
            for index := 0 to 8 - 1 do begin
                ivArray[index] := array_[index];
            end;
            TPreLogUtil.put('ivArray Length: ' + IntToStr(System.Length(ivArray)), TJava.Box(Self), 'encrypt');
            result_ := TJava.NewArray<ShortInt>((System.Length(array_)) - (System.Length(ivArray)));
            for index := System.Length(ivArray) to System.Length(array_) - 1 do begin
                result_[(index) - (System.Length(ivArray))] := array_[index];
            end;
            decrypted := Self.cipher.doFinal(result_);
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE('decrypt Failed', TJava.Box(Self), 'decrypt', TJava.Box(e));
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

