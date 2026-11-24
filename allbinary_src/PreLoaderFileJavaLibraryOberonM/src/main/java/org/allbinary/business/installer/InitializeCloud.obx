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
// package org.allbinary.business.installer
unit InitializeCloud;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TInitializeCloud = class(TObject)
  public
    logUtil: TLogUtil;
    class var CLOUD: string;
    class var CLOUD_UPDATE: string;
    procedure InitFields;
        constructor Create;
        function initialize(cloud: string; overwriteNewer: Boolean; overwriteAll: Boolean; current: Integer; total: Integer): Boolean; virtual;
  end;

implementation
uses
  PATH_GLOBALS, URLGLOBALS, AbIOSystem, AbFile, FileUtil, Directory, AbPath, StringMaker, StringUtil, BasicArrayList;


{AB:CODE}

procedure TInitializeCloud.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TInitializeCloud.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TInitializeCloud.initialize(cloud: string; overwriteNewer: Boolean; overwriteAll: Boolean; current: Integer; total: Integer): Boolean;
var
  stringBuffer: TStringMaker;
  path: TAbPath;
  realPath: TAbPath;
  file_: TAbFile;
  fileBasicArrayList: TBasicArrayList;
  size: Integer;
  portion: Integer;
  start: Integer;
  end_: Integer;
  nextFile: TAbFile;
  index: Integer;
begin
        try
            if TAbIOSystem.getInstance().isType('com.vobject.appengine.java.io') then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append(TURLGLOBALS.getWebappPath());
                stringBuffer.append(cloud);
                stringBuffer.append(TPATH_GLOBALS.getInstance().DATA_PATH);
                path := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(TURLGLOBALS.getWebappPath());
                realPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
                file_ := TAbFile.createAbFileFromAbPath(path);
                fileBasicArrayList := TDirectory.getInstance().search(file_, True);
                size := fileBasicArrayList.size();
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append('Searched: ');
                stringBuffer.append(path.toFileSystemString());
                stringBuffer.append(' BasicArrayList: ');
                stringBuffer.appendint(size);
                portion := ((size) div (total)) + (1);
                start := (portion) * (current);
                end_ := (start) + (portion);
                if (end_) > (size) then begin
                    end_ := size;
                end;
                stringBuffer.append(' Section: ');
                stringBuffer.appendint(start);
                stringBuffer.append(' - ');
                stringBuffer.appendint(end_);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'initialize()');
                
                for index := start to end_ - 1 do begin
                    nextFile := TAbFile(TJava.ToObject(fileBasicArrayList.get(index)));
                    if nextFile.isDirectory() then begin
                    end else begin
                        TFileUtil.getInstance().copyToCloud(nextFile, path, realPath, cloud, overwriteNewer, overwriteAll);
                    end;
                end;
                Self.logUtil.putF('Copied Files To Cloud', TJava.Box(Self), 'initialize()');
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Unable to copy installer files into cloud', TJava.Box(Self), 'initialize()', TJava.Box(e));
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TInitializeCloud.CLOUD := 'cloud/';
  TInitializeCloud.CLOUD_UPDATE := 'cloudupdate/';
  {AB:END}

end.

