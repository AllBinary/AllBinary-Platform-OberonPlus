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
// package org.allbinary.input.automation.osgi
unit DesktopBundle;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Bundle;

type
  {AB:TYPES}
  TDesktopBundle = class(TObject)
  public
    bundle: TBundle;
    class var DESKTOP_SYMBOLIC_NAME: string;
    procedure InitFields;
        constructor Create;
        procedure start; virtual;
  end;

implementation
uses
  JDialog, BundleContext, InputAutomationBundleActivator, BasicTextJDialog;


{AB:CODE}

procedure TDesktopBundle.InitFields;
begin
  
end;
    

constructor TDesktopBundle.Create;
var
  bundleContext_: TBundleContext;
  textJDialog: TJDialog;
  bundleArray: TArray<TBundle>;
  bundle_: TBundle;
  symbolicName: string;
  index: Integer;
begin
    inherited Create;
    InitFields;
        bundleContext_ := TInputAutomationBundleActivator.getBundleContext();
        if (bundleContext_) <> (nil) then begin
            bundleArray := bundleContext_.getBundles();
            for index := 0 to System.Length(bundleArray) - 1 do begin
                bundle_ := bundleArray[index];
                symbolicName := bundle_.getSymbolicName();
                if (CompareStr(symbolicName, TDesktopBundle.DESKTOP_SYMBOLIC_NAME)) = (0) then begin
                    Self.bundle := bundle_;
                end;
            end;
        end else begin
            textJDialog := TBasicTextJDialog.Create('BundlContext is Null');
            textJDialog.setVisible(True);
        end;
end;
    

// throws Exception
procedure TDesktopBundle.start;
begin
        Self.bundle.start();
end;

initialization
  {AB:INITIALIZATION}
  TDesktopBundle.DESKTOP_SYMBOLIC_NAME := 'org.knopflerfish.bundle.desktop';
  {AB:END}

end.

