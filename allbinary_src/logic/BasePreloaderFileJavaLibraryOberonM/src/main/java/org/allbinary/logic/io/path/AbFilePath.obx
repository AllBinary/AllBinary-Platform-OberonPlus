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
// package org.allbinary.logic.io.path
unit AbFilePath;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbPath;

type
  {AB:TYPES}
  TAbFilePath = class(TAbPath)
  public
        constructor Create(aPath: string);
  end;

implementation
uses
  AbPathData, PathUtil, StringUtil;


{AB:CODE}
    

constructor TAbFilePath.Create(aPath: string);
var
  pathData: TAbPathData;
  abPathUtil: TPathUtil;
begin
        inherited Create(TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING);
        pathData := TAbPathData.getInstance();
        abPathUtil := TPathUtil.getInstance();
        Self.schema := Self.getSchema(aPath);
        Self.setName(pathData.getNameFromPath(aPath));
        Self.setPath(abPathUtil.adjust(Self.getPathFromPath(abPathUtil.removeNameFromPath(aPath).toString())));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

