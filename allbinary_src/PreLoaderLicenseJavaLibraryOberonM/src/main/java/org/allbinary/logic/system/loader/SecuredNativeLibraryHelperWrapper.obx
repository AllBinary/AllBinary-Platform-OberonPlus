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
unit SecuredNativeLibraryHelperWrapper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeClientInformationInterface, SecuredNativeLibraryInterface, NativeLibraryHelperWrapper;

type
  {AB:TYPES}
  TSecuredNativeLibraryHelperWrapper = class(TNativeLibraryHelperWrapper)
  public
    securedNativeLibraryInterface: ISecuredNativeLibraryInterface;
    procedure InitFields;
        constructor Create(securedNativeLibraryInterface_: ISecuredNativeLibraryInterface);
        function unlock(abeClientInformation: IAbeClientInformationInterface): Boolean; virtual;
  end;

implementation
uses
  AbKeys, LicensingException;


{AB:CODE}

procedure TSecuredNativeLibraryHelperWrapper.InitFields;
begin
  
end;
    

constructor TSecuredNativeLibraryHelperWrapper.Create(securedNativeLibraryInterface_: ISecuredNativeLibraryInterface);
begin
        inherited Create(securedNativeLibraryInterface_.getLibraryName());
        InitFields;
        Self.securedNativeLibraryInterface := securedNativeLibraryInterface_;
end;
    

// throws LicensingException
function TSecuredNativeLibraryHelperWrapper.unlock(abeClientInformation: IAbeClientInformationInterface): Boolean;
begin
        Exit(Self.securedNativeLibraryInterface.unlock(TAbKeys.getInstance().getKey(abeClientInformation, Self.securedNativeLibraryInterface.getName())));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

