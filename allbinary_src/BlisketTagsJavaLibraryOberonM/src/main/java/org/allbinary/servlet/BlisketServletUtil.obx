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
// package org.allbinary.servlet
unit BlisketServletUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBlisketServletUtil = class(TObject)
  public
    class var instance: TBlisketServletUtil;
    constructor Create;
        class function getInstance: TBlisketServletUtil; static;
        procedure init(request: THttpServletRequest); virtual;
  end;

implementation
uses
  AppUrlGlobals, URLGLOBALS, AbPathData, WebappClassLoaderInfo;


{AB:CODE}

constructor TBlisketServletUtil.Create;
begin
  inherited Create;
end;
    

class function TBlisketServletUtil.getInstance: TBlisketServletUtil;
begin
        Exit(TBlisketServletUtil.instance);
end;
    

procedure TBlisketServletUtil.init(request: THttpServletRequest);
var
  urlGlobals_: TAppUrlGlobals;
begin
        urlGlobals_ := TAppUrlGlobals.Create();
        urlGlobals_.setWebappPath(request.getServletContext().getRealPath(TAbPathData.getInstance().SEPARATOR));
        TURLGLOBALS.init(urlGlobals_);
        TWebappClassLoaderInfo.setLoader(TClassLoader.getSystemClassLoader());
end;

initialization
  {AB:INITIALIZATION}
  TBlisketServletUtil.instance := TBlisketServletUtil.Create();
  {AB:END}

end.

