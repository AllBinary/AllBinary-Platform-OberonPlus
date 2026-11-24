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
// package org.allbinary.logic.system.loader
unit NativeLibraryHelperWrapper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TNativeLibraryHelperWrapper = class(TObject)
  public
    libraryName: string;
    loader: TClassLoader;
    anyType: TObject;
    procedure InitFields;
        constructor Create(libraryName: string);
        procedure load; virtual;
        procedure unload; virtual;
        function toString: string; virtual;
        function getLibraryName: string; virtual;
        procedure setLibraryName(libraryName: string); virtual;
  end;

implementation
uses
  NativeLibraryClassLoader, CommonStrings;


{AB:CODE}

procedure TNativeLibraryHelperWrapper.InitFields;
begin
  
  
  
end;
    

constructor TNativeLibraryHelperWrapper.Create(libraryName: string);
begin
    inherited Create;
    InitFields;
        Self.setLibraryName(libraryName);
end;
    

// throws Exception
procedure TNativeLibraryHelperWrapper.load;
var
  params: TArray<TObject>;
  classes: TArray<TClass>;
  myClass: TClass;
  constructor_: TConstructor;
  commonStrings_: TCommonStrings;
  method_: TMethod;
begin
        params := TJava.NewArray<TObject>(1);
        params[0] := Self.getLibraryName();
        classes := TJava.NewArray<TClass>(1);
        classes[0] := TJava.ToObject(Self.getLibraryName()).ClassType;
        Self.loader := TNativeLibraryClassLoader.Create(TClassLoader.getSystemClassLoader());
        myClass := Self.loader.loadClass('dynamic.NativeLibraryHelper');
        constructor_ := myClass.getConstructor(classes);
        Self.anyType := TJava.Box(constructor_.newInstance(params));
        commonStrings_ := TCommonStrings.getInstance();
        method_ := TJava.ToObject(Self.anyType).ClassType.getMethod(commonStrings_.LOAD, nil);
        method_.invoke(Self.anyType, nil);
end;
    

procedure TNativeLibraryHelperWrapper.unload;
begin
        Self.anyType := nil;
        Self.loader := nil;
        TJava.Nothing;
        TJava.Nothing;
end;
    

function TNativeLibraryHelperWrapper.toString: string;
begin
        Exit('Library: ' + TJava.ToString(Self.getLibraryName()));
end;
    

function TNativeLibraryHelperWrapper.getLibraryName: string;
begin
        Exit(Self.libraryName);
end;
    

procedure TNativeLibraryHelperWrapper.setLibraryName(libraryName: string);
begin
        Self.libraryName := libraryName;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

