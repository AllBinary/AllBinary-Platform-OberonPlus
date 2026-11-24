{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.java.runtime.process.git
unit GitProcessHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, TrackedStrings;

type
  {AB:TYPES}
  // Do not use this instead just skip target, build, Application paths.
  TGitProcessHelper = class(TObject)
  public
    trackedStrings: TTrackedStrings;
    class var instance: TGitProcessHelper;
    procedure InitFields;
        class function getInstance: TGitProcessHelper; static;
        constructor Create;
        function trackedFiles(rootAsString: string; pathspec: string): IList<string>; overload; virtual;
        function trackedFiles(rootAsString: string; pathspec: string; suffix: string): IList<string>; overload; virtual;
        function isTracked(file_: TAbFile): Boolean; virtual;
  end;

implementation
uses
  ProcessBuilder, LogUtil, AbFileNativeUtil, StringMaker, CommonStrings;


{AB:CODE}

procedure TGitProcessHelper.InitFields;
begin
  Self.trackedStrings := TTrackedStrings.getInstance();
end;
    

class function TGitProcessHelper.getInstance: TGitProcessHelper;
begin
        Exit(TGitProcessHelper.instance);
end;
    

constructor TGitProcessHelper.Create;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  THIS_IS_SLOW: string;
begin
    inherited Create;
    InitFields;
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        THIS_IS_SLOW := 'This is slow consider path exclusion instead';
        logUtil_.putF(THIS_IS_SLOW, TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
end;
    

// throws IOException, InterruptedException
function TGitProcessHelper.trackedFiles(rootAsString: string; pathspec: string): IList<string>;
begin
        Exit(Self.trackedFiles(rootAsString, pathspec, '.java'));
end;
    

// throws IOException, InterruptedException
function TGitProcessHelper.trackedFiles(rootAsString: string; pathspec: string; suffix: string): IList<string>;
var
  process: TProcess;
  output: TArray<ShortInt>;
  exitCode: Integer;
  files: IList<string>;
  start: Integer;
  relativePath: string;
  index: Integer;
begin
        process := TProcessBuilder.Create(Self.trackedStrings.GIT_COMMAND, Self.trackedStrings.CHANGE_DIRECTORY_OPTION, rootAsString, Self.trackedStrings.LIST_FILES_COMMAND, Self.trackedStrings.SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE, Self.trackedStrings.PATHSPEC_SEPARATOR, pathspec).redirectError(TProcessBuilder.Redirect.INHERIT).start();
        output := process.getInputStream().readAllBytes();
        exitCode := process.waitFor();
        if (exitCode) <> (0) then begin
            raise SysUtils.Exception.Create(TStringMaker.Create().append('git ls-files failed for ').append(rootAsString).append(' with exit code ').appendint(exitCode).toString());
        end;
        files := TJavaVector<TObject>.Create();
        start := 0;
        
        for index := 0 to System.Length(output) - 1 do begin
            if (Integer(output[index])) = (0) then begin
                relativePath := TJava.NewString(output, start, (index) - (start), TStandardCharsets.UTF_8);
                if relativePath.EndsWith(suffix) then begin
                    files.add(relativePath);
                end;
                start := (index) + (1);
            end;
        end;
        Exit(files);
end;
    

function TGitProcessHelper.isTracked(file_: TAbFile): Boolean;
var
  nativeFile: TFile;
  parentFile: TFile;
  process: TProcess;
begin
        try
            nativeFile := TAbFileNativeUtil.get(file_);
            parentFile := nativeFile.getParentFile();
            process := TProcessBuilder.Create(Self.trackedStrings.GIT_COMMAND, Self.trackedStrings.CHANGE_DIRECTORY_OPTION, parentFile.getPath(), Self.trackedStrings.LIST_FILES_COMMAND, Self.trackedStrings.ERROR_UNMATCH_OPTION, Self.trackedStrings.PATHSPEC_SEPARATOR, nativeFile.getName()).redirectErrorStream(True).start();
            process.getInputStream().readAllBytes();
            Exit((process.waitFor()) = (0));
        except
            on e: SysUtils.Exception do begin
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGitProcessHelper.instance := TGitProcessHelper.Create();
  {AB:END}

end.

