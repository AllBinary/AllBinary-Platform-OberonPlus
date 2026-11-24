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
// package org.allbinary.logic.io.file.filter
unit BasicFileFilterUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBasicFileFilterUtil = class(TObject)
  public
        constructor Create;
        class function getInstance(extension: string): IFileFilter; static;
  end;

implementation
uses
  VisitorFileFilter, IncludeFileExtensionsBooleanFileVisitor, BasicArrayList, BasicArrayListD;


{AB:CODE}
    

constructor TBasicFileFilterUtil.Create;
begin
    inherited Create;
end;
    

class function TBasicFileFilterUtil.getInstance(extension: string): IFileFilter;
var
  vector: TBasicArrayList;
  includeFileExtensionsBooleanFileVisitor_: TIncludeFileExtensionsBooleanFileVisitor;
begin
        vector := TBasicArrayListD.Create();
        vector.add(TJava.Box(extension));
        includeFileExtensionsBooleanFileVisitor_ := TIncludeFileExtensionsBooleanFileVisitor.Create(vector);
        Exit((TJava.ToObject(TVisitorFileFilter.Create(includeFileExtensionsBooleanFileVisitor_)) as IFileFilter));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

