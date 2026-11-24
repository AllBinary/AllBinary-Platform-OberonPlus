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
// package org.allbinary.logic.visual.transform.template.customizer.widgets.logo
unit LogoImageFileUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Directory, AbPath, FileItem;

type
  {AB:TYPES}
  TLogoImageFileUtil = class(TObject)
  public
    directory: TDirectory;
    fileName: string;
    imageFileAbPath: TAbPath;
    procedure InitFields;
        constructor Create(imageAbPath: TAbPath; imageFile: string);
        procedure saveFiles(fileItem_: TFileItem); virtual;
  end;

implementation
uses
  AbFile, FileUtil;


{AB:CODE}

procedure TLogoImageFileUtil.InitFields;
begin
  Self.directory := TDirectory.getInstance();
  
  
end;
    

constructor TLogoImageFileUtil.Create(imageAbPath: TAbPath; imageFile: string);
begin
    inherited Create;
    InitFields;
        Self.fileName := imageFile;
        Self.imageFileAbPath := imageAbPath;
end;
    

// throws Exception
procedure TLogoImageFileUtil.saveFiles(fileItem_: TFileItem);
var
  originalImageFile: TAbFile;
begin
        if (Self.fileName) = ('') then begin
            raise SysUtils.Exception.Create('Image File Name Was Null');
        end;
        if not (Self.directory.create_(Self.imageFileAbPath)) then begin
            raise SysUtils.Exception.Create('Unable to save file to non creatable directory');
        end;
        originalImageFile := TAbFile.createAbFile(Self.imageFileAbPath.toString() + Self.fileName);
        originalImageFile.createNewFile();
        TFileUtil.getInstance().write(TByteArrayInputStream.Create(fileItem_.get()), originalImageFile);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

