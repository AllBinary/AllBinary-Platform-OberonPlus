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
// package org.allbinary.logic.java.proxy
unit InterfaceCastProxy;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InvocationHandler;

type
  {AB:TYPES}
  TInterfaceCastProxy = class(TInterfacedObject, IInvocationHandler)
  public
    anyType: TObject;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(anyType: TObject);
        class function newInstance(anyType: TObject): TObject; static;
        function invoke(proxyObject: TObject; proxyMethod: TMethod; proxyArgs: TArray<TObject>): TObject; virtual;
  end;

implementation

{AB:CODE}

procedure TInterfaceCastProxy.InitFields;
begin
  
end;

function TInterfaceCastProxy.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInterfaceCastProxy.Create(anyType: TObject);
begin
    inherited Create;
    InitFields;
        Self.anyType := TJava.Box(anyType);
end;
    

class function TInterfaceCastProxy.newInstance(anyType: TObject): TObject;
begin
        Exit(TJava.Box(TProxy.newProxyInstance(TClassLoader.getSystemClassLoader(), TJava.ToObject(anyType).ClassType.getInterfaces(), TInterfaceCastProxy.Create(anyType))));
end;
    

// throws Throwable
function TInterfaceCastProxy.invoke(proxyObject: TObject; proxyMethod: TMethod; proxyArgs: TArray<TObject>): TObject;
var
  methodName: string;
  realMethod: TMethod;
begin
        methodName := proxyMethod.getName();
        realMethod := TJava.ToObject(Self.anyType).ClassType.getMethod(methodName, proxyMethod.getParameterTypes());
        if not (realMethod.isAccessible()) then begin
            realMethod.setAccessible(True);
        end;
        Exit(TJava.Box(proxyMethod.invoke(Self.anyType, proxyArgs)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

