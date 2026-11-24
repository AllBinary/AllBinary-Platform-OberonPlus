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
// package org.allbinary.logic.system.hardware.components.linux
unit CpuInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCpuInfo = class(TObject)
  public
    name: string;
    class var PROCESSOR: TCpuInfo;
    class var VENDORID: TCpuInfo;
    class var CPUFAMILY: TCpuInfo;
    class var MODEL: TCpuInfo;
    class var MODELNAME: TCpuInfo;
    class var STEPPING: TCpuInfo;
    class var CPUMHZ: TCpuInfo;
    class var CACHESIZE: TCpuInfo;
    class var FDIVBUG: TCpuInfo;
    class var HLTBUG: TCpuInfo;
    class var F00FBUG: TCpuInfo;
    class var COMABUG: TCpuInfo;
    class var FPU: TCpuInfo;
    class var FPUEXCEPTION: TCpuInfo;
    class var CPUIDLEVEL: TCpuInfo;
    class var WP: TCpuInfo;
    class var FLAGS: TCpuInfo;
    class var BOGOMIPS: TCpuInfo;
    procedure InitFields;
        constructor Create(name: string);
        function toString: string; virtual;
  end;

implementation

{AB:CODE}

procedure TCpuInfo.InitFields;
begin
  
end;
    

constructor TCpuInfo.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.name := name;
end;
    

function TCpuInfo.toString: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  TCpuInfo.PROCESSOR := TCpuInfo.Create('processor');
  TCpuInfo.VENDORID := TCpuInfo.Create('vendor_id');
  TCpuInfo.CPUFAMILY := TCpuInfo.Create('cpu family');
  TCpuInfo.MODEL := TCpuInfo.Create('model');
  TCpuInfo.MODELNAME := TCpuInfo.Create('model name');
  TCpuInfo.STEPPING := TCpuInfo.Create('stepping');
  TCpuInfo.CPUMHZ := TCpuInfo.Create('cpu MHz');
  TCpuInfo.CACHESIZE := TCpuInfo.Create('cache size');
  TCpuInfo.FDIVBUG := TCpuInfo.Create('fdiv_bug');
  TCpuInfo.HLTBUG := TCpuInfo.Create('hlt_bug');
  TCpuInfo.F00FBUG := TCpuInfo.Create('f00f_bug');
  TCpuInfo.COMABUG := TCpuInfo.Create('coma_bug');
  TCpuInfo.FPU := TCpuInfo.Create('fpu');
  TCpuInfo.FPUEXCEPTION := TCpuInfo.Create('fpu_exception');
  TCpuInfo.CPUIDLEVEL := TCpuInfo.Create('cache size');
  TCpuInfo.WP := TCpuInfo.Create('yes');
  TCpuInfo.FLAGS := TCpuInfo.Create('flags');
  TCpuInfo.BOGOMIPS := TCpuInfo.Create('bogomips');
  {AB:END}

end.

