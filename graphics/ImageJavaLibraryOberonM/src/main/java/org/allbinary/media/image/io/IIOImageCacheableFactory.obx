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
// package org.allbinary.media.image.io
unit IIOImageCacheableFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheableInterface, CacheableInterfaceFactoryInterface;

type
  {AB:TYPES}
  TIIOImageCacheableFactory = class(TInterfacedObject, ICacheableInterfaceFactoryInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        function getInstance(key: TObject): ICacheableInterface; virtual;
  end;

implementation
uses
  IIOImageCacheable;


{AB:CODE}

function TIIOImageCacheableFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TIIOImageCacheableFactory.Create;
begin
    inherited Create;
end;
    

function TIIOImageCacheableFactory.getInstance(key: TObject): ICacheableInterface;
begin
        Exit(TIIOImageCacheable.Create(TJava.UnboxString(TJava.ToObject(key))));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

