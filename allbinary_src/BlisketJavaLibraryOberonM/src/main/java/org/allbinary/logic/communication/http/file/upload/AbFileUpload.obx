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
// package org.allbinary.logic.communication.http.file.upload
unit AbFileUpload;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, FileItemFactory, FileItemIterator, FileUpload;

type
  {AB:TYPES}
  TAbFileUpload = class(TFileUpload)
  public
        constructor Create(fileItemFactory_: TFileItemFactory);
        function getItemIterator(request: THttpServletRequest): TFileItemIterator; virtual;
  end;

implementation
uses
  FileUploadException, ServletRequestContext;


{AB:CODE}
    

constructor TAbFileUpload.Create(fileItemFactory_: TFileItemFactory);
begin
        inherited Create(fileItemFactory_);
end;
    

// throws FileUploadException, IOException
function TAbFileUpload.getItemIterator(request: THttpServletRequest): TFileItemIterator;
begin
        Exit(inherited getItemIterator(TServletRequestContext.Create(request)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

