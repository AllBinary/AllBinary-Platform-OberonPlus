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
// package org.allbinary.logic.java.anyType.clazz.loader
unit ClassLoaderUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TClassLoaderUtil = class(TObject)
  public
        constructor Create;
        class function getName(anyType: TObject): string; static;
  end;

implementation

{AB:CODE}
    

constructor TClassLoaderUtil.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TClassLoaderUtil.getName(anyType: TObject): string;
var
  classLoader: TClassLoader;
begin
        classLoader := TClassLoader.getSystemClassLoader();
        if (classLoader) <> (nil) then begin
            Exit('ClassLoader: ' + TJava.ToObject(classLoader).ClassType.ClassName);
        end;
        raise SysUtils.Exception.Create('Unable to get ClassLoader');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

