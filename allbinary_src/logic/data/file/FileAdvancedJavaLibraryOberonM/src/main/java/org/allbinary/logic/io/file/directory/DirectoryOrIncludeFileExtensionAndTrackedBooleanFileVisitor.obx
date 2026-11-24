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
// package org.allbinary.logic.io.file.directory
unit DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GitProcessHelper, AbFile, IncludeFileExtensionsBooleanFileVisitor, BasicArrayList, TrackedStrings;

type
  {AB:TYPES}
  TDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor = class(TIncludeFileExtensionsBooleanFileVisitor)
  public
    trackedStrings: TTrackedStrings;
    gitProcessHelper: TGitProcessHelper;
    includesString: string;
    procedure InitFields;
        constructor Create(filterStringBasicArrayList: TBasicArrayList); overload;
        constructor Create(filterStringBasicArrayList: TBasicArrayList; includesString: string); overload;
        function visit(file_: TAbFile): Boolean; overload; override;
        function visit(file_: TAbFile; fileNameString: string): Boolean; overload; override;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  CommonDataFileStrings, BasicArrayListD;


{AB:CODE}

procedure TDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.InitFields;
begin
  Self.trackedStrings := TTrackedStrings.getInstance();
  Self.gitProcessHelper := TGitProcessHelper.getInstance();
  
end;
    

constructor TDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.Create(filterStringBasicArrayList: TBasicArrayList);
begin
        inherited Create(filterStringBasicArrayList);
        InitFields;
        Self.includesString := nil;
end;
    

constructor TDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.Create(filterStringBasicArrayList: TBasicArrayList; includesString: string);
begin
        inherited Create(filterStringBasicArrayList);
        InitFields;
        Self.includesString := includesString;
end;
    

function TDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.visit(file_: TAbFile): Boolean;
begin
        if file_.isDirectory() then begin
            Exit(True);
        end;
        if ((Self.includesString) = ('')) or ((file_.getAbsolutePath().indexOf(Self.includesString)) >= (0)) then begin
            Exit(inherited visit(file_));
        end else begin
            Exit(False);
        end;
end;
    

function TDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.visit(file_: TAbFile; fileNameString: string): Boolean;
var
  filePath: string;
begin
        filePath := file_.getPath();
        if inherited visit(file_, fileNameString) then begin
            if not (((((Pos(Self.trackedStrings.APPLICATION, filePath) > 0)) or ((Pos(Self.trackedStrings.APP, filePath) > 0))) or ((Pos(Self.trackedStrings.HTML_TEMP, filePath) > 0)))) then begin
                if not ((((Pos(Self.trackedStrings.TARGET_PATH_WINDOWS, filePath) > 0)) or ((Pos(Self.trackedStrings.TARGET_PATH_UNIX, filePath) > 0)))) then begin
                    if Self.gitProcessHelper.isTracked(file_) then begin
                        Exit(True);
                    end else begin
                    end;
                end else begin
                end;
            end else begin
            end;
        end;
        Exit(False);
end;
    

class procedure TDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.main(args: TArray<string>);
var
  commonFileStrings: TCommonDataFileStrings;
  list: TBasicArrayList;
  filePath: string;
  result_: Boolean;
begin
        commonFileStrings := TCommonDataFileStrings.getInstance();
        list := TBasicArrayListD.Create();
        list.add(TJava.Box(commonFileStrings.JAVA));
        filePath := 'G:\mnt\bc\mydev\games\ZeptoRacer\platform\j2se\ZeptoRacerStaticPathsJ2SEM\'#9'arget\dependency\org\allbinary\logic\system\security\licensing\ZeptoRacerPCClientInformation.java';
        result_ := TDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.Create(list).visit(TAbFile.createAbFileFromRawPath(filePath));
        WriteLn(filePath + ' is Tracked: ' + BoolToStr(result_, True));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

